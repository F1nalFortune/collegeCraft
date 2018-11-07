	
<?php
function prepareDB(){
	$myfile = fopen("../sqlFiles/createCollegeCraft.sql", "r") or die("Unable to open file!");
	$stmts = fread($myfile,filesize("../sqlFiles/createCollegeCraft.sql"));
	fclose($myfile);
	$conn = @new mysqli('127.0.0.1', 'root', '', 'collegeCraft');
	if ($conn->multi_query($stmts) === TRUE) {
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}
}
function addUser(){
	$myfile = fopen("../sqlFiles/createCollegeCraft.sql", "r") or die("Unable to open file!");
	$conn = @new mysqli('127.0.0.1', 'root', '', 'collegeCraft');

}
#goes from having no collegeCraft database what so ever to it being fully populated
?>
