<!DOCTYPE>
<html>
<head>
	<style>
		body {
			background-color: #CFB87C;
		}
		h1 {
			text-align: center;
			font-family: "Arial";
			font-weight: bold;
			text-transform: uppercase;
		}
		p {
			text-align: center;
			font-family: "Arial";
		}
	</style>
	<title>Quincy Shelter Database</title>
</head>
<body>
	<h1>Welcome to the Quincy Pet Shelter Database</h1>

</html>

<?php
	//Server Info
    $servername = "localhost";
    $username = "khanab";
    $password = "HwFBo6Vitl3F";   
    $db = "khanab_DB";
  
	// Create connection
    $connection = mysqli_connect($servername, $username, $password, $db);
    // Check connection
    //if ($connection == false) {
			//die("ERROR: Could not connect." . mysqli_connect_error());
//}

        //Establish connection
        //$connection = mysqli_connect($servername, $username, $password, $db);
        
    //Check connection
    if($connection == false){
       die("ERROR: Could not connect." . mysqli_connect_error());
    }
        
?>

<! Create table to house data ->
<table class = "table table-hover" align = "center" border = "2px" style = "width:700px; line-height:50px;">
<tr>
<th>Pet Name</th>
<th>Medical Service</th>
<th>Date of Service</th>
</tr>


<?php
//View one
//SQL code
$sql = "SELECT PET.PetName, MEDICAL.Service, MEDICAL.DateOfService 
FROM PET 
INNER JOIN MEDICAL ON PET.PetID = MEDICAL.MedicalPetID
ORDER BY MEDICAL.DateOfService DESC";

//Create view
$view = mysqli_query($connection, $sql);

//Create tables to host query results based on the number of rows
while ($row = mysqli_fetch_assoc($view)) {
	echo "<tr>";
	foreach ($row as $object) {
		echo "<td>" . $object . "</td>";
	}
	echo "</tr>";
}
?>

<! Create table to house data ->
<table class = "table table-hover" align = "center" border = "2px" style = "width:700px; line-height:50px;">
<tr>
<th>Pet Name</th>
<th>Breed</th>
<th>Length of Stay</th>
</tr>

<?php
//View 3
$sql3 = "SELECT PET.PetName, PET.Breed, DATEDIFF(CURRENT_DATE, PET.ArrivalDate) AS LengthOfStay 
FROM PET 
LEFT JOIN ADOPTION ON PET.PetID = ADOPTION.AdoptionPetID 
WHERE ADOPTION.AdoptionPetID IS NULL";

//Create view
$view3 = mysqli_query($connection, $sql3);

//Create tables to host query results based on the number of rows
while ($row = mysqli_fetch_assoc($view3)) {
	echo "<tr>";
	foreach ($row as $object) {
		echo "<td>" . $object . "</td>";
	}
	echo "</tr>";
}
?>

<! Create table to house data ->
<table class = "table table-hover" align = "center" border = "2px" style = "width:700px; line-height:50px;">
<tr>
<th>Pet Name</th>
<th>Owner Name</th>
<th>Date of Adoption/Return</th>
<th>Current Status</th>
</tr>

<?php
//View 4
$sql4 = "SELECT PET.PetName, OWNER.OwnerName, ADOPTION.AdoptionDate, ADOPTION.Status 
FROM PET INNER JOIN ADOPTION ON PET.PetID = ADOPTION.AdoptionPetID
INNER JOIN OWNER ON ADOPTION.AdoptionOwnerID = OWNER.OwnerID 
ORDER BY EXTRACT(YEAR FROM ADOPTION.AdoptionDate)";

//Create view
$view4 = mysqli_query($connection, $sql4);

//Create tables to host query results based on the number of rows
while ($row = mysqli_fetch_assoc($view4)) {
	echo "<tr>";
	foreach ($row as $object) {
		echo "<td>" . $object . "</td>";
	}
	echo "</tr>";
}
?>

<! Create table to house data ->
<table class = "table table-hover" align = "center" border = "2px" style = "width:700px; line-height:50px;">
<tr>
<th>Pet Name</th>
<th>Date of Birth</th>
<th>Current Health Status</th>
<th>Species</th>
<th>Arrival Date</th>
</tr>

<?php
//View 5
 $sql5 = "SELECT PET.PetName, PET.Age, PET.HealthStatus, PET.Species, PET.ArrivalDate 
 FROM PET 
 INNER JOIN ADOPTION ON PET.PetID = ADOPTION.AdoptionPetID 
 ORDER BY PET.Species, PET.Age DESC";

//Create query
$view5 = mysqli_query($connection, $sql5);

//Create tables to host query results based on the number of rows
while ($row = mysqli_fetch_assoc($view5)) {
	echo "<tr>";
	foreach ($row as $object) {
		echo "<td>" . $object . "</td>";
	}
	echo "</tr>";
}
?>

<! Create table to house data ->
<table class = "table table-hover" align = "center" border = "2px" style = "width:700px; line-height:50px;">
<tr>
<th>Pet Name</th>
<th>Species</th>
<th>Owner Name</th>
</tr>

<?php

//View 6 
$sql6 = "SELECT PET.PetName, PET.Species, OWNER.OwnerName 
FROM PET 
INNER JOIN OWNER ON PET.Species = OWNER.Preference 
LEFT JOIN ADOPTION ON PET.PetID = ADOPTION.AdoptionPetID 
WHERE ADOPTION.AdoptionPetID IS NULL";

//Create query
$view6 = mysqli_query($connection, $sql6);

//Create tables to host query results based on the number of rows
while ($row = mysqli_fetch_assoc($view6)) {
	echo "<tr>";
	foreach ($row as $object) {
		echo "<td>" . $object . "</td>";
	}
	echo "</tr>";
}
?>

<! Create table to house data ->
<table class = "table table-hover" align = "center" border = "2px" style = "width:700px; line-height:50px;">
<tr>
<th>Breed</th>
<th>Adoption Rate (%)</th>
</tr>

<?php

//View 7
$sql7 = "SELECT PET.Breed, COUNT(ADOPTION.AdoptionPetID) AS AdoptionRate
FROM PET INNER 
JOIN ADOPTION ON PET.PetID = ADOPTION.AdoptionPetID
GROUP BY PET.Breed ORDER BY AdoptionRate DESC 
LIMIT 1";

//Create query
$view7 = mysqli_query($connection, $sql7);

//Create tables to host query results based on the number of rows
while ($row = mysqli_fetch_assoc($view7)) {
	echo "<tr>";
	foreach ($row as $object) {
		echo "<td>" . $object . "</td>";
	}
	echo "</tr>";
}

?>