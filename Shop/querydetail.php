<?php
 
  $conn = new mysqli("localhost", "root", "", "my_database");

   $name=$_POST["user_name"];
   $address=$_POST["user_address"];
   $email=$_POST["user_email"];
   $phone=$_POST["user_phone"];
   $gender=$_POST["gender"];
  $rate=$_POST["experience"];
    $helpful=$_POST["helpful"];
    $visit=$_POST["visit"];
    $feedback=$_POST["user_msg"];
    

    $sql = "INSERT INTO feedbackdetail(name, address, email, gender, rate, helpfulwebsite, visit, feedbackdescription, phone) VALUES ('" . $name . "', '" . $address . "', '" . $email . "', '" . $gender . "', '" . $rate . "', " . $helpful . ", '" . $visit . "', '" . $feedback . "', " . $phone .")";
   // die($sql);
    
    $conn->query($sql);
    $conn->close();
    header('location:confirmfeedback.php?msg=Thank You For Filling The Feedback Form And Your Feedback Received Successfully !!!')
    ?>







































