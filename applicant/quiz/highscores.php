<?php 
$page_title = "Training";
include "../../conn.php";
session_start();
$applicant_id = $_SESSION["applicant_id"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../../assets/img/peso.png" type="image/x-icon">
    <title>Document</title>
    <link rel="stylesheet" href="css/app.css">
    <link rel="stylesheet" href="css/highscores.css">
</head>
<body>
    <div class="container">
        <div class="flex-center flex-column" id="highScores">
            <h1 class="finalScore">High Scores</h1>
            <ul id="highScoresList"></ul>
            <a href="index.php" class="btn">Go Home</a>
        </div>
    </div>
    <script src="js/highscores.js"></script>
</body>
</html>