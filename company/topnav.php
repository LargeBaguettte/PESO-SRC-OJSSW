<?php
@session_start();
include '../conn.php';
$company_id = $_SESSION["company_id"];
$query = "SELECT companyName FROM c_accounttb WHERE company_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $company_id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

$companyName = $row['companyName'];

?>

<link rel="stylesheet" href="../assets/css/company_topnav.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">


<div class="topnav">
            <h1>Home</h1>
            <div class="active-user">
            <button id="dropdown-button" class="link-button" onclick="toggleDropdown()">
                <span id="dropdown-text"><?php echo $companyName; ?></span>
                <i class="bi bi-caret-down-fill"></i>
            </button>
            </div>
        <div id="dropdown-menu" style="display: none;">
            <ul>
            <li><a href="personal_info.php">Profile</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="signout.php">Logout</a></li>
            </ul>
        </div>
</div>
<script>
    var isOpen = false;

function toggleDropdown() {
    var dropdownMenu = document.getElementById("dropdown-menu");
    var dropdownButton = document.getElementById("dropdown-button");
    var dropdownIcon = dropdownButton.querySelector(".bi-caret-down-fill");

    if (isOpen) {
        dropdownMenu.style.display = "none";
        dropdownButton.style.border = "none";
        dropdownButton.style.background = "none";
        dropdownIcon.style.transform = "rotate(0deg)";
    } else {
        var rect = dropdownButton.getBoundingClientRect();
        dropdownMenu.style.position = "absolute";
        dropdownMenu.style.top = rect.bottom + "px";
        dropdownMenu.style.right = window.innerWidth - rect.left - dropdownButton.offsetWidth + "px";
        dropdownMenu.style.display = "block";
        dropdownMenu.style.zIndex = "2";
        dropdownButton.style.border = "1px solid #ccc";
        dropdownButton.style.background = "#f9f9f9";
        dropdownIcon.style.transform = "rotate(180deg)";
    }

    isOpen = !isOpen;
}
</script>