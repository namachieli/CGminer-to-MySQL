<?php

$addr = "localhost";
$port = 4028;

function getsock($addr, $port)
{
 $socket = null;
 $socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
 if ($socket === false || $socket === null)
 {
	$error = socket_strerror(socket_last_error());
	$msg = "socket create(TCP) failed";
	echo "ERR: $msg '$error'\n";
	return null;
 }

 $res = socket_connect($socket, $addr, $port);
 if ($res === false)
 {
	$error = socket_strerror(socket_last_error());
	$msg = "socket connect($addr,$port) failed";
	echo "ERR: $msg '$error'\n";
	socket_close($socket);
	return null;
 }
 return $socket;
}
#
# Slow ...
function readsockline($socket)
{
 $line = '';
 while (true)
 {
	$byte = socket_read($socket, 1);
	if ($byte === false || $byte === '')
		break;
	if ($byte === "\0")
		break;
	$line .= $byte;
 }
 return $line;
}
#
function request($cmd)
{
 $socket = getsock("127.0.0.1", 4028);
 if ($socket != null)
 {
	socket_write($socket, $cmd, strlen($cmd));
	$line = readsockline($socket);
	socket_close($socket);

	if (strlen($line) == 0)
	{
		echo "WARN: '$cmd' returned nothing\n";
		return $line;
	}
	$data = explode(",",$line);

	print $line;
	
	$con=mysqli_connect("localhost","root","","test");
	
	$cnt = 0;
	while ($cnt<30)
	{
	$sql = explode("=", $data[$cnt]);
	if ($cnt == 0) $sqldata = "'{$sql[1]}',";
	elseif ($cnt == 29) $sqldata = "$sqldata '{$sql[1]}'";
	else $sqldata = "$sqldata '{$sql[1]}',";
	$cnt++;
	}
mysqli_query($con,"INSERT INTO miner VALUES ($sqldata)");
mysqli_close($con);
 }

 return null;
}
#
if (isset($argv) and count($argv) > 1)
 $r = request($argv[1]);
else
 $r = request('summary');
#
echo print_r($r, true)."\n";
#
?>
