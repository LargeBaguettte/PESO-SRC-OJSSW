<?php
$page_title = "Home";
    
include '../conn.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PESO COMPANY Homepage</title>
    <link rel="shortcut icon" href="../assets/img/peso.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../assets/css/applicant_homepage.css">
    <link rel="stylesheet" href="../assets/css/peso_Wapplicant.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Londrina Solid">
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>
<body>
    <?php 
    include "../function.php";
    include "applicant_sidenav.php";
    include "topnav.php";
    ?>
    <div class="card1" style="background: white; height: 200vh; width: 80%; margin-top: 15vh; margin-left: 20%;">
    
    <div class="wrapper" style="background: white;">
    <div class="container-fluid">
        <div class="row">
                            <div class="card2" style="width: 100%;">
                            <h2>WALK IN APPLICANTS</h2>
                            </div>      
                            <br>     
                            <div class="card2">
                                <button class="add" onclick="document.location='Wapplicant_create.php'"><i class="bi bi-plus"></i>&nbsp;&nbsp;ADD A NEW WALK-IN APPLICANT</button>
                            </div>
                            <br>
                            </div>
                        <div class="card3" style="margin-top: 20px;">
                        <?php
                        // Include config file
                        require_once "../peso/Wapplicant_config.php";
                        
                        // Attempt select query execution
                        $sql = "SELECT * FROM walkin_applicant";
                        if($result = mysqli_query($link, $sql)){
                            if(mysqli_num_rows($result) > 0){
                                echo '<table style="border-radius: 30px; text-align: center;" class="table table-bordered">';
                                    echo '<thead >';
                                        echo "<tr>";
                                            echo "<th>ID</th>";
                                            echo "<th>Last Name</th>";
                                            echo "<th>First Name</th>";
                                            echo "<th>Middle Name</th>";
                                            echo "<th>Email Address</th>";
                                            echo "<th>Action</th>";
                                        echo "</tr>";
                                    echo "</thead>";
                                    echo "<tbody>";
                                    while($row = mysqli_fetch_array($result)){
                                        echo "<tr>";
                                            echo "<td>" . $row['W_applicant_id'] . "</td>";
                                            echo "<td>" . $row['W_lastName'] . "</td>";
                                            echo "<td>" . $row['W_firstName'] . "</td>";
                                            echo "<td>" . $row['W_midName'] . "</td>";
                                            echo "<td>" . $row['W_email'] . "</td>";
                                            echo "<td>";
                                                echo '<a href="Wapplicant_read.php?W_applicant_id='. $row['W_applicant_id'] .'" class="mr-3" title="View Record" data-toggle="tooltip"><span style="color:#B22623;" class="fa fa-eye"></span></a>';
                                                echo '<a href="Wapplicant_update.php?W_applicant_id='. $row['W_applicant_id'] .'" class="mr-3" title="Update Record" data-toggle="tooltip"><span style="color:#B22623;" class="fa fa-pencil"></span></a>';
                                                echo '<a href="Wapplicant_delete.php?W_applicant_id='. $row['W_applicant_id'] .'" title="Delete Record" data-toggle="tooltip"><span style="color:#B22623;" class="fa fa-trash"></span></a>';
                                            echo "</td>";
                                        echo "</tr>";
                                    }
                                    echo "</tbody>";                            
                                echo "</table>";
                                // Free result set
                                mysqli_free_result($result);
                            } else{
                                echo '<div class="alert alert-danger"><em>No records were found.</em></div>';
                            }
                        } else{
                            echo "Oops! Something went wrong. Please try again later.";
                        }
    
                        // Close connection
                        mysqli_close($link);
                        ?>
                        </div>
                    
        </div>
    
    </div>
</body>
</html>
