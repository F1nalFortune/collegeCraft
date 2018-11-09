	
<?php
#goes from having no collegeCraft database what so ever to it being fully populated
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
#add user to the database file
function addUser($name,$pwd){
	$file = "../sqlFiles/createCollegeCraft.sql";
	$line = "INSERT INTO users (username, hashed_password) VALUES ('$name','$pwd');\n";
	$out = file_put_contents($file, $line, FILE_APPEND);
}
?>
