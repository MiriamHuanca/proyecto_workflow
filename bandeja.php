<?php
session_start();
if (!isset($_SESSION["usuario"]))
	$_SESSION["usuario"]=$_POST["usuario"];
if (!isset($_SESSION["clave"]))
	$_SESSION["clave"]=$_POST["clave"];

$usuario=$_SESSION["usuario"];
$clave=$_SESSION["clave"];

$link = mysql_connect("localhost","root","");
mysql_select_db("aworkflow");
$sql="select * from usuario where usuario='".$usuario."' and clave='".$clave."'";
$data=mysql_query($sql,$link);
$row=mysql_fetch_row($data);
if (isset($row[2]))
{

	$_SESSION["rol"]=$row["2"];
	$sql1="select * from flujoprocesousuario where codusuario='".$usuario
	."' and estado='P'";
	$data1=mysql_query($sql1,$link);
	echo "<table>";
	while ($row1=mysql_fetch_row($data1))
	{
		echo "<tr>";
		echo "<td>";
		echo $row1["1"].$row1["2"];
		echo "</td>";
		echo "<td>";
		echo "<a href='motorp.php?codflujo=".$row1["1"]."&codproceso=".$row1["2"]."'>Editar</a>";		
		echo "</td>";
		echo "</tr>";
		
	};
	echo "</table>";
	echo '<form method="post" action="seleccion.php">';
	echo "<input type='submit' name='enviar' value='Iniciar' />";
	echo '</form>';
}
else
{
	$_SESSION["rol"]="";
}

?>