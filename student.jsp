<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>T&amp;P</title>
		<link rel="stylesheet" href="css/student.css"/>
		<style>
			table {
    			font-family: arial, sans-serif;
    			border-collapse: collapse;
    			width: 100%;
			}

			td {
    			border: 1px solid #dddddd;
    			text-align: left;
    			padding: 8px;
			}

			tr:nth-child(even) {
    			background-color: #dddddd;
			}
		</style>
		<script type="text/javascript">			
			function switchContent(sidebar_id, content_id) {
				document.getElementById("pi").style.display = "none";
				document.getElementById("fi").style.display = "none";
				document.getElementById("eq").style.display = "none";
				document.getElementById("ji").style.display = "none";
				document.getElementById("c").style.display = "none";
				
				document.getElementById("personal_information").style.backgroundColor ="#80B3B2";
				document.getElementById("family_information").style.backgroundColor ="#80B3B2";
				document.getElementById("education_qualification").style.backgroundColor ="#80B3B2";
				document.getElementById("job_information").style.backgroundColor ="#80B3B2";
				document.getElementById("certification").style.backgroundColor ="#80B3B2";
				
				document.getElementById(sidebar_id).style.backgroundColor ="#206077";
				document.getElementById(content_id).style.display = "block";
			}
		</script>
	</head>

	<body style="width: 100%; height: 100vh; margin: 0px; background-color: black;">
		<section id="navbar">
			<div id="logo"><img src="img/Logo_Tnp.png"/></div>
			<div id="nav">
				<div id="nav_item"">
					<a class="nav_item_content" href="#">HOME</a>
					<a class="nav_item_content" href="#">EVENTS</a>
					<a class="nav_item_content" href="#">FORUM</a>
					<a class="nav_item_content" href="contact.html">CONTACT US</a>
					<a class="nav_item_content" href="#">LOGOUT</a>
				</div>
			</div>
		</section>
		
		<section id="sidebar" style="width: 20%; height: 89vh; float: left; overflow: hidden; "><!-- background-color: #80B3B2; box-shadow: 0px 0px 10px black; -->
			<div id="sidebar_heading" style="width: 100%; height: 65px; background-color: #56AAA8;"><!-- background-color: #3E7F97; -->
				<div id="student" style="float: left; width: 100%; height: 100%;">
					<center><p style="margin: 0px; padding: 3%; font-family: Montserrat; font-size: 40px;"><b>STUDENT</b></p></center>
				</div>
			</div>
			<div id="sidebar_content" style="width: 100%; height: 90%;">
				<div id="personal_information" class="pi" onClick="switchContent(this.id, 'pi')" style="width: 100%; height: 20.1%; background-color: #206077;"><!--  border-bottom: solid; border-width: 0.4px; -->
					<center><p style="font-family: Montserrat; font-size: 25px; margin-top: 0px; padding-top: 15%;">Personal Information</p></center>
				</div>
				
				<div id="family_information" class="pi" onClick="switchContent(this.id, 'fi')" style="width: 100%; height: 20.1%; background-color: #80B3B2">
					<center><p style="font-family: Montserrat; font-size: 25px; margin-top: 0px; padding-top: 15%;">Family Information</p></center>
				</div>
				
				<div id="education_qualification" class="pi" onClick="switchContent(this.id, 'eq')" style="width: 100%; height: 20.1%; background-color: #80B3B2">
					<center><p style="font-family: Montserrat; font-size: 25px; margin-top: 0px; padding-top: 8%;">Education &amp; Qualification</p></center>
				</div>
				
				<div id="job_information" class="pi" onClick="switchContent(this.id, 'ji')" style="width: 100%; height: 20.1%; background-color: #80B3B2">
					<center><p style="font-family: Montserrat; font-size: 25px; margin-top: 0px; padding-top: 15%;">Job Information</p></center>
				</div>
				
				<div id="certification" class="pi" onClick="switchContent(this.id, 'c')" style="width: 100%; height: 20.1%; background-color: #80B3B2">
					<center><p style="font-family: Montserrat; font-size: 25px; margin-top: 0px; padding-top: 15%;">Certification</p></center>
				</div>
			</div>
		</section>
		
		<section id="content" style="width: 80%; height: 89vh; float: right;">
			<div id="pi" class="content_name" style="width: 100%; height: 89vh; background-color: ;">
				<div class="arrow" style="float: left; width: 25px; height: 89vh;">
					<img style="width: 25px; height: 25px; margin-top: 110px;" src="img/arrow_icon.png"/>
				</div>
				
				<div id="pi_content" style="float: right; width:97%; height: 89vh; text-align: center; background-color: ;">
					<div style="margin: 0 auto; width: 80%; height: 100%; text-align: center; background-color: ;">
						<div style="width: 100%; height: 20%; background-color: ;">
							<h1 style="float:left; margin-left: 30%; margin-top: 10%; margin-bottom: 0px;"><%= session.getAttribute("name") %></h1>
						</div>
						<div style="width: 100%; height: 80%; border-radius: 20px; float: left; background-color: #8ABDB9; box-shadow: 0px 0px 20px black;">
							<div style="background-color: ; width: 100%; height: 30%; border-radius: 20px 20px 0px 0px;">
								<h1 style="color: ; float: left; margin-left: 30%; margin-top: 0px;"><%= session.getAttribute("roll_no") %></h1>
							</div>
							<div style="background-color: ; width: 100%; height: 70%; border-radius: 0px 0px 20px 20px;">
								<table>
									<tr><td>Student ID</td><td><%= session.getAttribute("std_id") %></td></tr>
									<tr><td>Email ID</td><td><%= session.getAttribute("email") %></td></tr>
									<tr><td>Contact No</td><td><%= session.getAttribute("contact_no") %></td></tr>
									<tr><td>DOB</td><td><%= session.getAttribute("dob") %></td></tr>
									<tr><td>Address</td><td><%= session.getAttribute("address") %></td></tr>
									<tr><td>Marital Status</td><td><%= session.getAttribute("marrital_status") %></td></tr>
									<tr><td>Gender</td><td><%= session.getAttribute("gender") %></td></tr>
									<tr><td>Hobbies</td><td><%= session.getAttribute("hobbies") %></td></tr>
								</table>
							</div>
						</div>
						<div style="border-radius: 100px; border:none; width: 15%; height: 30%; background-color: black; position: absolute; margin-left: 3%; top: 15%; border-radius: 100px;">
							<img style="border-radius: 100px; border:none;" src="img/default.png"/>
						</div>
					</div>
				</div>
			</div>
			
			<div id="fi" class="content_name" style="width: 100%; height: 89vh; background-color: ; display: none;">
				<div class="arrow" style="float: left; width: 25px; height: 89vh;">
					<img style="width: 25px; height: 25px; margin-top: 220px;" src="img/arrow_icon.png"/>
				</div>
				
				<div id="fi_content" style="float: right; width:97%; height: 89vh; text-align: center; background-color: ;">
					<div style="background-color: #8ABDB9; width: 80%; height: 70%; margin: 5% 0% 0% 10%; border-radius: 20px; box-shadow: 0px 0px 20px black;">
						<table>
							<tr><td style="border-top: none; border-left: none;">Father's Name</td><td style="border-top: none; border-right: none;"><%= session.getAttribute("father_name") %></td></tr>
							<tr><td>Father's Contact</td><td><%= session.getAttribute("father_contact_no") %></td></tr>
							<tr><td>Father's Email ID</td><td><%= session.getAttribute("father_email") %></td></tr>
							<tr><td>Father's Occupation</td><td><%= session.getAttribute("father_occupation") %></td></tr>
							<tr><td>Mother's Name</td><td><%= session.getAttribute("mother_name") %></td></tr>
							<tr><td>Mother's Contact</td><td><%= session.getAttribute("mother_contact_no") %></td></tr>
							<tr><td>Mother's Email ID</td><td><%= session.getAttribute("mother_email") %></td></tr>
							<tr><td>Mother's Occupation</td><td><%= session.getAttribute("mother_occupation") %></td></tr>
						</table>
					</div>
				</div>
			</div>
			
			<div id="eq" class="content_name" style="width: 100%; height: 89vh; background-color: ; display: none;">
				<div class="arrow" style="float: left; width: 25px; height: 89vh;">
					<img style="width: 25px; height: 25px; margin-top: 330px;" src="img/arrow_icon.png"/>
				</div>
				
				<div id="eq_content" style="float: right; width:97%; height: 89vh; text-align: center; background-color: ;">
					<div style="background-color: #8ABDB9; width: 80%; height: 70%; margin: 5% 0% 0% 10%; border-radius: 20px; box-shadow: 0px 0px 20px black;">
						<table>
							<tr><td style="border-top: none; border-left: none;">10th Board</td><td style="border-top: none; border-right: none;"><%= session.getAttribute("board_10") %></td></tr>
							<tr><td>10th Marks</td><td><%= session.getAttribute("marks_10") %></td></tr>
							<tr><td><%= session.getAttribute("c_type_board_1") %></td><td><%= session.getAttribute("board_1") %></td></tr>
							<tr><td><%= session.getAttribute("c_type_marks_1") %></td><td><%= session.getAttribute("marks_1") %></td></tr>
							<tr><td><%= session.getAttribute("c_type_board_2") %></td><td><%= session.getAttribute("board_2") %></td></tr>
							<tr><td><%= session.getAttribute("c_type_marks_2") %></td><td><%= session.getAttribute("marks_2") %></td></tr>
						</table>
					</div>
				</div>
			</div>
			
			<div id="ji" class="content_name" style="width: 100%; height: 89vh; background-color: ; display: none;">
				<div class="arrow" style="float: left; width: 25px; height: 89vh;">
					<img style="width: 25px; height: 25px; margin-top: 440px;" src="img/arrow_icon.png"/>
				</div>
				
				<div id="ji_content" style="float: right; width:97%; height: 89vh; text-align: center; background-color: ;">
					<div style="background-color: #8ABDB9; width: 80%; height: 70%; margin: 5% 0% 0% 10%; border-radius: 20px; box-shadow: 0px 0px 20px black;">
						<table>
							<tr><td style="border-top: none; border-left: none;">Work Experience</td><td style="border-top: none; border-right: none;"><%= session.getAttribute("work_exp") %></td></tr>
							<tr><td>Location Preference</td><td><%= session.getAttribute("loc_prefer") %></td></tr>
							<tr><td>Min Package Preference</td><td><%= session.getAttribute("min_pack_prefer") %> LPA</td></tr>
							<tr><td>Area of Interest</td><td><%= session.getAttribute("area_occupation") %></td></tr>
							<tr><td>Project &amp; Training</td><td><%= session.getAttribute("projecct_training") %></td></tr>
						</table>
					</div>
				</div>
			</div>
			
			<div id="c" class="content_name" style="width: 100%; height: 89vh; background-color: ; display: none;">
				<div class="arrow" style="float: left; width: 25px; height: 89vh;">
					<img style="width: 25px; height: 25px; margin-top: 550px;" src="img/arrow_icon.png"/>
				</div>
				
				<div id="c_content" style="float: right; width:97%; height: 89vh; text-align: center; background-color: ;">
					<div style="background-color: #8ABDB9; width: 80%; height: 70%; margin: 5% 0% 0% 10%; border-radius: 20px; box-shadow: 0px 0px 20px black;">
						<table>
							<tr><td style="border-top: none; border-left: none;"></td><td style="border-top: none; border-right: none;"><%= session.getAttribute("") %></td></tr>
						</table>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>