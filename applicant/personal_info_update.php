<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Homepage</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="../assets/css/applicant_personal_info.css">
    </head>
    <body>
        <?php 
        include "../function.php";
        include "sidenav.php";
        ?>
        
        <div class="card1">
            <?php 
            include "topnav.php";
            ?>
            <center>
            <div class="card2">
                <?php
                include "profilenav.php";
                ?>

                <div class="card3">
                    <div class="card4">
                                    
                        <form action="" method="post">
                            <div class="form-card">
                                <div class="form-col-1">
                                    <h2>Personal Information</h2>
                                    
                                </div>
                            </div>

                            <div class="form-card">
                                <h3>Name</h3>
                                <div class="form-col-1">
                                    <input type="text" name="firstName" placeholder="First" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="midName" placeholder="Middle" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="lastName" placeholder="Last" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" style="width: 50%;" name="suffix" placeholder="Suffix" required maxlength="">
                                </div>
                            </div>

                            <div class="form-card">
                                <h3>Type of Jobseeker</h3>
                                <div class="form-col-2">
                                    <select class="" name="jobseekerType" required>
                                        <option value="" style="color:gray;"selected disabled>Type of Jobseeker</option>
                                        <option value="first time">First Time</option>
                                        <option value="jobseeker">Jobseeker</option>
                                        <option value="ofw">OFW</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <div class="column">
                                        <h4>Birthplace</h4>
                                        <input type="text" name="birthplace" placeholder="Birthplace" required min="" max="">
                                    </div>
                                    <div class="field-space-2"></div>
                                    <div class="column">
                                        <h4>Birthday</h4>
                                        <input type="date" style="padding-left: 0;" name="birthday" placeholder="Birthday" required min="" max="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <div class="column">
                                        <h4>Age</h4>
                                        <input type="number" name="age" placeholder="Age" required min="" max="">
                                    </div>
                                    <div class="field-space-2"></div>
                                    <div class="column">
                                        <h4>Sex</h4>
                                        <select class="" name="sex" required>
                                            <option value="" style="color:gray;"selected disabled>Sex</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <div class="column">
                                        <h4>Citizenship</h4>
                                        <input type="text" name="citizenship" placeholder="Citizenship" required min="" max="">
                                    </div>
                                    <div class="field-space-2"></div>
                                    <div class="column">
                                        <h4>Civil Status</h4>
                                        <select class="" name="civilStatus" required>
                                            <option value="" style="color:gray;"selected disabled>Civil Status</option>
                                            <option value="single">Single</option>
                                            <option value="married">Married</option>
                                            <option value="widow">Widow</option>
                                            <option value="separated">Separated</option>
                                            <option value="single parent">Single Parent</option>
                                        </select>                                    
                                    </div>
                                </div>
                            </div>

                            <div class="form-card">
                                <h3>Present Address</h3>
                                <div class="form-col-1">
                                    <input type="text" style="" name="housenumPresent" placeholder="House #/Street" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="brgyPresent" placeholder="Barangay" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="cityPresent" placeholder="City" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="provincePresent" placeholder="Province" required maxlength="">
                                </div>
                            </div>

                            <div class="form-card">
                                <h3>Permanent Address</h3>
                                <div class="form-col-1">
                                    <input type="text" name="housenumPermanent" placeholder="House #/Street" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="brgyPermanent" placeholder="Barangay" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="cityPermanent" placeholder="City" required maxlength="">
                                    <div class="field-space-1"></div>
                                    <input type="text" name="provincePermanent" placeholder="Province" required maxlength="">
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <div class="column">
                                        <h4>Weight</h4>
                                        <input type="number" name="weight" placeholder="Weight (kg)" required min="" max="">
                                    </div>
                                    <div class="field-space-2"></div>
                                    <div class="column">
                                        <h4>Height</h4>
                                        <input type="number" style="padding-left: 0;" name="height" placeholder="Height (ft)" required min="" max="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-card">
                                <h3>Landline Number</h3>
                                <div class="form-col-2">
                                <input type="number" name="landlineNum" placeholder="Landline Number" required min="" max="">
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <div class="column">
                                        <h4>Mobile Number</h4>
                                        <input type="number" name="mobilePnum" placeholder="Primary" required min="" max="">
                                    </div>
                                    <div class="field-space-2"></div>
                                    <div class="column">
                                        <h4>&nbsp;</h4>
                                        <input type="number" style="padding-left: 0;" name="mobileSnum" placeholder="Secondary" required min="" max="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-card">
                                <h3>Email Address</h3>
                                <div class="form-col-2">
                                <input type="text" name="email" placeholder="Email Address" required min="" max="">
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <div class="column">
                                        <h4>Disability</h4>
                                        <input type="text" name="disability" placeholder="Disability" required min="" max="">
                                    </div>
                                    <div class="field-space-2"></div>
                                    <div class="column">
                                        <h4>Employment Status</h4>
                                        <input type="text" style="padding-left: 0;" name="employmentStatus" placeholder="Employment Status" required min="" max="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <h5>Are you actively looking for job?</h5>
                                    <select style="width: 30%;" class="" name="activelyLooking" required>
                                            <option value="" style="color:gray;"selected>Choose</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <h5>Are you willing to work immediately?</h5>
                                    <select style="width: 30%;" class="" name="willinglyWork" required>
                                            <option value="" style="color:gray;"selected disabled>Choose</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <h5>Are you a 4Ps beneficiary?</h5>
                                    <select style="width: 30%;" class="" name="fourPsBeneficiary" required>
                                            <option value="" style="color:gray;"selected disabled>Choose</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-card">
                                <div class="form-col-1">
                                    <h5>Are you an OFW?</h5>
                                    <select style="width: 30%;" class="" name="ofw" required>
                                            <option value="" style="color:gray;"selected disabled>Choose</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                    </select>
                                </div>
                            </div>

                            <button class="save" name="submit">SAVE</button>
                            <button class="cancel" name="">CANCEL</button>








                            

                            

                        </form>
                    </div>
                                
                </div>

            </div>
            </center>
        </div>

                
    </body>
</html>