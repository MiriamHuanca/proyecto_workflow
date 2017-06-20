<?php
$codflujo=$_GET["codflujo"];
$codproceso=$_GET["codproceso"];
$link = mysql_connect("localhost","root","");
mysql_select_db("workflow");
$sql="select * from flujoproceso where codflujo='".$codflujo."' and codproceso='".$codproceso."'";
$data=mysql_query($sql,$link);
$row=mysql_fetch_row($data);
$pagina=$row["4"];
$codprocesonext=$row["3"];
$sql="select * from flujoproceso where codflujo='".$codflujo."' and codprocesonext='".$codprocesonext."'";
$data1=mysql_query($sql,$link);
$row1=mysql_fetch_row($data1);
$pagina1=$row1["4"];
//print_r($row1)
//$codprocesonprev=$row1["1"];
//echo $codprocesonprev;
?>
<!--Primera forma-->
<!--iframe src="<?php echo $pagina; ?>">
</iframe> -->
<!-- <?php 
	include "cl".$pagina1; 
	if (isset($pagina1)) include "cla".$pagina1;
	?> -->
	<!--Segunda forma-->
	<form action="motorp.php" method="get">
		<?php 
		include $pagina1; 
		?>
		<input type="hidden" name="codflujo" value="<?php echo $codflujo;?>"/>
		<input type="hidden" name="codproceso" value="<?php echo $codprocesonext;?>"/>
		<input type="submit" name="siguiente" value="siguiente">
	</form>
