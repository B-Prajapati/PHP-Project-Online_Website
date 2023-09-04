<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   

<style>
a {
    text-decoration: none;
    font-size: 20px;
    margin-right: 150px;
  
   line-height: 30px;

}


/* Slideshow container */
.slideshow-container{
  max-width: 100%;
 
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #000000;
  font-size: 50px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #000000;
  font-size: 20px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

p:hover {
  font-size: 150%;
  background-color: white;
}


</style>
<script>

let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}





</script>

</head>
<body bgcolor=#eee>
<?php
   
    session_start();
    $sessionId = session_id();



    $conn = new mysqli("localhost", "root", "", "my_database");
    ?>
    <h1 align=center><font size=7>E-Shop</font></h1>
    <table width=100% cellspacing=0 cellpadding=0 >
        <tr>
            <td colspan=2>
            <table width=100% cellspacing=0 cellpadding=0 bgcolor=cyan height=40>
                    <tr >
                        <td ><a  style=color:black href=index.php>Home</a></td>
                        <td><a style=color:black href=catalog.php>Products</a></td>
                        <td><a style=color:black href=viewcart.php>View Cart</a></td>
                        <td><a style=color:black href=aboutus.php>About Us</a></td>
                        <td><a  style=color:black href=quary_form.php>Query</a></td>
                        <td><a style=color:black href=contactus.php>Contact Us</a></td>
                        
                    </tr>
                </table>
            </td>
        </tr></table>


        
<div class="slideshow-container">


<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
  <img src="img1.webp" style="width:100%">
  <div class="text">Titan</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="img2.webp" style="width:100%">
  <div class="text">Cloths</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="img3.webp" style="width:100%">
  <div class="text">Shoes</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="img4.webp" style="width:100%">
  <div class="text">Shoes</div>
</div>

<!-- Next and previous buttons -->
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
<span class="dot" onclick="currentSlide(1)"></span>
<span class="dot" onclick="currentSlide(2)"></span>
<span class="dot" onclick="currentSlide(3)"></span>
<span class="dot" onclick="currentSlide(4)"></span>
</div>


<table>
<tr>
    <?php
    $i=1;
    $sql = "SELECT * FROM productdetail WHERE homepage=1 ";
    $result = $conn->query($sql);
    echo "<table width=100% cellpadding=10 ><tr>";
    while($row = $result->fetch_assoc())
    {
        if($i % 5== 1)
      
            echo "<tr><td width=25%>&nbsp;</td><td width=25% >&nbsp;</td><td width=25%>&nbsp;</td><td width=25%>&nbsp;</td></tr><tr>";

            echo "<td width=25%><p class=test><img height=150 src=products/" . $row["productid"] . ".jpg><br><b>" .  $row["productname"] . "</b><br><b>Price</b>: Rs. " . $row["price"] . "<br><a href=add2cart.php?product=" . $row["productid"] . "&qty=" . $row["minqty"] . ">Add to Cart</a></p>";

            $i++;
            
    

    }
   
    $conn->close();


?>
</td><tr>
   </table>






</body>
</html>