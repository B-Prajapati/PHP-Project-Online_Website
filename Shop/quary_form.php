<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0">
	<title></title>

	<style>
	
*{
    box-sizing: border-box;
}

a {
    text-decoration: none;
    font-size: 20px;
    margin-right: 150px;
  
   line-height: 30px;

}

h1{
    font: 1.5em;
    text-align: center;
    text-transform: capitalize;
}

form{
    margin: 0 auto;
    width: 70%;
    padding: 1em;
    border: 1px solid #ccc;
    border: 1em;
}

fieldset{
    border: 1px solid lightgray;
    margin: 10px;
}

legend{
    font-weight: 700;
}

div + div{
    margin-top: 1em;
}

input, textarea{
    width: 200px;
    border: 1px solid #999;
    
}

textarea{
    vertical-align: top;
   rows: 8;
   column-span: 100;
    resize: vertical;
}

button{
    margin: .5em;
    font-size: 1em;
    text-transform: capitalize;
    background-color: red;
    color: white;
    border: none;
    padding: 5px;
    border-radius: 2px;
}

#submitbutton{
    display: flex;
    justify-content: center;
}


		
	</style>
</head>

<body bgcolor=#eee>

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
                        <td><a  style=color:black href=quary_form.php>Feedback</a></td>
                        <td><a style=color:black href=contactus.php>Contact Us</a></td>
                        
                    </tr>
                </table>
            </td>
        </tr></table>

		<div class="bg-image"></div>

<div class="bg-text">
	<form method="post" action="querydetail.php">
		<h2><center>Give Us Your Feedback</center></h2>
		<fieldset>
			<legend>Personal Information</legend>
			<table>
				<tr>
					<td><label for="name" id="name-label">Name:</label></td>
					<td><input type="text" id="name" name="user_name" placeholder="Enter Your Name" required></td>
				</tr>
				<tr>
					<td>
						<label for="address">Address:</label>
					</td>
					<td>
						<input type="text" name="user_address" id="address" placeholder="Enter your address">
					</td>
				</tr>

				<tr>
					<td>
						<label for="email">Email: </label>
					</td>
					<td>
						<input type="email" id="email" name="user_email" placeholder="Enter your email" required>
					</td>
				</tr>
				<tr>
					<td>
						<label for="phone">Phone: </label>
					</td>
					<td>
						<input type="tel" id="phone" name="user_phone" placeholder="Enter contact Number">
					</td>
				</tr>
				<tr>
					<td>
						<label for="gender">Gender:</label>
					</td>
					<td>
						<table>
							<tr>
								<td>
									<input type="radio" name="gender" value="male" checked>
								</td>
								<td>
									Male
								</td>
							</tr>
							<tr>
								<td>
									<input type="radio" name="gender" value="female"
								</td>
								<td>
									Female
								</td>
							</tr>
							
						</table>
					</td>
				</tr>
				
			</table>
		</fieldset>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
			
		<fieldset>
		<legend>Experience About The Website</legend>
			<div>
				<label for="dept">How do you rate your overall experience ?</label>

				<select id="dept" name="experience">
					<option value="very_good">Outstanding</option>
					<option value="good">Good</option>
					<option value="moderate">Moderate</option>
					<option value="poor">Poor</option>
					<option value="very_poor">Very Poor</option>
				</select>
				&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				<label for="status">Was this website is helpful for you ?</label>
				<select name="helpful" id="status">
					<option value="1">Yes</option>
					<option value="0">No</option>
				</select>
			</div>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
			
		<table >
		<tr><td><label for="gender">Would you like to visit again?</label></td><td>
		<table>
			<tr><td><input type="radio" name="visit" value="Yes">Yes</td></tr>
			<tr><td><input type="radio" name="visit" value="No">No</td></tr>
			<tr><td><input type="radio" name="visit" value="May-be">May-be</td></tr>
			
		</table>

		</td></tr>
		</table>
		</fieldset>
			&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
			
			
		<fieldset>
			<legend>Your Feedback</legend>
			<div>
				<textarea id="msg" name="user_msg" rows="6" cols="90" placeholder="Enter your message"></textarea>
			</div>
		</fieldset>
		   
		<div id="submitbutton">
			<button type="submit" id="submit">Submit your feedback</button>
		</div>
	</form>
</div>

	
</body>
</html>
