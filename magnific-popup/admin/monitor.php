<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Monitor</title>
    <!-- Style for circles to show whats working -->
    <style>
    body {
        color: white;
        background-color: black;
    }
    
    .red {
        height: 25px;
        width: 25px;
        background-color: red;
        border-radius: 50%;
    }

    .green {
        height: 25px;
        width: 25px;
        background-color: green;
        border-radius: 50%;
    }
    </style>
</head>

<body>

    <?php

    //main connection file for both admin & front end
    $servername = "localhost"; //server
    $username = "king123_lacuisine"; //username
    $password = "Sancho7"; //password
    $dbname = "king123_lacuisine";  //database

    // Create connection
    $db = mysqli_connect($servername, $username, $password, $dbname); // connecting 

    // Check connection and display results
    if (!$db) 
    {       	
        echo "<h2>Failed to connect to database:</h2><div class='red'></div>";
    } else 
    {
        echo "<h2>Succesfully connected to database:</h2><div class='green'></div>";
    }

    //Let the user know the webserver has been reached
    echo "<h2>Connected to web server:</h2><div class='green'></div>"

    ?>

</body>

</html>