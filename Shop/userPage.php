<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
div{
    font-size: 50px;
}
.test{
    font-size: 20px;
}

</style>
</head>
<body bgcolor=#eee>
    <?php
    include 'top.php';
    ?>
    
    <td width=80%>
    <?php
    
    if(isset($_SESSION["email"]) && isset($_SESSION["pwd"]))
    {
        $email = $_SESSION["email"];
        $password  = $_SESSION["pwd"];
    }
    else
    {
        $email = $_POST["txtMail"];
        $password  = $_POST["txtPassword"];
    }

    $conn = new mysqli("localhost", "root", "", "my_database");
    $sql = "SELECT * FROM reguser WHERE email='" . $email . "' AND password='" .  $password . "' AND activestatus=1";
    //die($sql);
  
    $result = $conn->query($sql);

    if($row = $result->fetch_assoc())
    {
        
        $_SESSION["email"] = $row["email"];
        $_SESSION["pwd"] = $row["password"];

        echo "<div><br> Welcome " . $row["name"] . "</div>";
        echo "<br><div class=test><a href=editProfile.php>Edit Profile</a>";
        echo "<br><a href=changePasswordForm.php>Change Password</a>";
        echo "<br><a href=myorderlist.php>My Order</a>";
        echo "<br><a href=logout.php>Logout</a></div>";

    }
    else
    {
        $conn->close();
        header('location:Login.php?msg=Invalid Email and/or Password');
    }
    
    $conn->close();

    ?>
    
    </td></tr></table>

</body>
</html>