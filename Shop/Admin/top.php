<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        
a {
    text-decoration: none;
    
    margin-right: 150px;
    color: black;
   line-height: 20px;
}


        </style>
</head>
<body background-color: #eee;>
<?php
    session_start();
    if(isset($_SESSION["userId"]) && isset($_SESSION["adminPwd"]))
    {
        $userId = $_SESSION["userId"];
        $adminPwd  = $_SESSION["adminPwd"];
    }
    else
    {
        header('location:Login.php?msg=Session Expried,Please Relogin');
    }

    $conn = new mysqli("localhost", "root", "", "my_database");
    $sql = "SELECT * FROM adminuser WHERE userid= '" . $userId . "' AND password= '" .  $adminPwd . "'";

  
    $result = $conn->query($sql);
    if($row = $result->fetch_assoc())
    {
        $_SESSION["userId"] = $row["userid"];
        $_SESSION["adminPwd"] = $row["password"];
    }
    else
    {
        header('location:Login.php?msg=Session Expried,Please Relogin');
    }
    ?>

    <table width=100% cellspacing=0 cellpadding=0 >
        <tr>
            <td align=center><h1>E-Shop Admin Panel</h1></td>
        </tr>
        <tr>
            <td>
                <table width=100% cellspacing=0 cellpadding=0 bgcolor=#cceedd height=40>
                    <tr>
                        <td><a href=adminPage.php> Home</a></td>
                        <td><a href=categoryList.php>Category </a></td>
                        <td><a href=subCategoryList.php>Sub_Category</a></td>
                        <td><a href=productList.php>Products</a></td>
                        <td><a href=orderList.php>Orders</a></td>
                        <td><a href=userList.php>Users</a></td>
                        <td><a href=changePasswordForm.php> Password</a></td>
                        <td><a href=Logout.php>Logout</a></td>
                    </tr>
                </table>
            </td>
        </tr>
        
</body>
</html>