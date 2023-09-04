<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
    .id
    {
        padding: 220px;

    }



</style>
</head>
<body bgcolor=#eee>

<?php

include 'top.php';
?>
<td width=80% align=center>
<?php
    echo "<div class=id>";
    if(isset($_GET["msg"]))
    {
        echo "<center><b><font size=5 color=green>" . $_GET["msg"] . "</font></b></center>";
    }
    echo "</div>";

?>
    </td></tr></table>
</body>
</html>