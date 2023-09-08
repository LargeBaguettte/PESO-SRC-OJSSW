<link rel="stylesheet" href="../assets/css/applicant_sidenav.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<div class="topside-container">
    <div class="sidenav">
        <div class="col-side">
        <a href="homepage.php" <?php echo isActivePage("homepage.php"); ?>><i class="bi bi-house-door"></i>&nbsp;Home</a>
        <a href="find_jobs.php" <?php echo isActivePage("find_jobs.php"); ?>><i class="bi bi-file-post"></i>&nbsp;Find Jobs</a>
        <a href="urgent_hiring.php" <?php echo isActivePage("urgent_hiring.php"); ?>><i class="bi bi-search"></i>&nbsp;Urgent Hiring</a>
        <a href="#" <?php echo isActivePage("#"); ?>><i class="bi bi-bell" style="font-size:20px"></i>&nbsp;Applicant</a>
        <a href="multiform_profile.php" <?php echo isActivePage("multiform_profile.php"); ?>><i class="bi bi-person-lines-fill"></i>&nbsp;Profile</a>
        <a href="#" <?php echo isActivePage("#"); ?>><i class="bi bi-sliders2"></i>&nbsp;More Details</a>
        </div>
</div>
