<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body background-color=#eee;>
    <?php
    session_start();
    if(isset($_SESSION["userId"]) && isset($_SESSION["adminPwd"]))
    {
        $userId = $_SESSION["userId"];
        $adminPwd  = $_SESSION["adminPwd"];
    }
    else
    {
        $userId = $_POST["txtUserId"];
        $adminPwd  = $_POST["txtPassword"];
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
        $conn->close();
        header('location:Login.php?msg=Invalid Email and/or Password');
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
                        <td><a href=adminPage.php>Admin Home</a></td>
                        <td><a href=categoryList.php>Cateory List</a></td>
                        <td><a href=subCategoryList.php>Sub Category List</a></td>
                        <td><a href=productList.php>Products</a></td>
                        <td><a href=orderList.php>Orders</a></td>
                        <td><a href=userList.php>Users</a></td>
                        <td><a href=changePasswordForm.php>Change Password</a></td>
                        <td><a href=Logout.php>Logout</a></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <?php
    $conn->close();
    ?>
</body>
</html>