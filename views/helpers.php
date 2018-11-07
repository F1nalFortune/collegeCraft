	
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


#populate!
function populate(){
	#add sample users
	for($i=0;$i<30;$i++){
		$name = 'User' . $i;
		$pwd = crypt("password",'$1$salt012345');
		$bio = "Excited to join the community, meet new users, and see whats up!";
		$email_address = 'User' . $i . '@gmail.com';
		$file = "../sqlFiles/createCollegeCraft.sql";
		$line = "INSERT INTO users (username, hashed_password,bio,email_address) VALUES ('$name','$pwd','$bio','$email_address');\n";
		$out = file_put_contents($file, $line, FILE_APPEND);
	}
	#add sample products
	for($i=0;$i<30;$i++){
		$price = rand(50,500) + rand(0,99)*.01;
		$file = "../sqlFiles/createCollegeCraft.sql";
		$line = "INSERT INTO product (name, description, price, category) VALUES ('PS4 new','in working condition, even has a few games.','$price' ,'gaming');\n";
		$out = file_put_contents($file, $line, FILE_APPEND);
	}
	
	
}
?>
