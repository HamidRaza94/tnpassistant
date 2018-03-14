<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>T&amp;P</title>
	<link rel="shortcut icon" href="img/Logo_Tnp.ico" />
	<script src="js/jquery.js"></script>
	<link rel="stylesheet" href="css/index.css"/>
	<script src="js/index.js"></script>
</head>

<body>
	<%@ page import="java.util.*, java.sql.*, index.EventDao, index.Event" %>
	<section id="section-nav">
		<div id="navbar" class="index-div">
			<div id="logo"><img src="img/Logo_Tnp.png"/></div>
			<div id="nav">
				<div id="nav_item">
					<a class="nav_item_content" href="index.jsp" style="background-color: white; color: black !important;">HOME</a>
					<a class="nav_item_content" href="#">NEWS</a>
					<a class="nav_item_content" href="forum.jsp">FORUM</a>
					<a class="nav_item_content" href="contact.html">CONTACT</a>
				</div>
			</div>
		</div>
	</section>
	
	<section id="section-content">
		<div id="content" class="index-div">
			<div style="width: 800px; height: 560px; position: absolute; top: 0%; left: 22%;">
				<div id="login">
					<form onSubmit="return validate()">
						<div id="login_content">
							<div id="login_txt"><h3>LOGIN</h3></div>
						
							<div id="login_field">
								<div id="login_field_select" class="login_fields">
									<select id="login_type_select" name="login_type" class="fields">
										<option value="null" selected disabled>Select</option>
										<option disabled>--------</option>
										<option value="Admin">Admin</option>
										<option value="Recruiter">Recruiter</option>
										<option value="Student">Student</option>
									</select>
								</div>
							
								<div id="login_field_username" class="login_fields">
									<input id="id" name="id" class="fields" type="text" placeholder="Username"/>
								</div>
							
								<div id="login_field_password" class="login_fields">
									<input id="pass" name="pass" class="fields" type="password" placeholder="Password"/>
								</div>
							</div>
						
							<div id="login_rememer" style="width: 300px; height: 50px; margin: 15px 35px;">
								<input id="remember" name="checkbox" type="checkbox"/>
								<label for="remember">Remember me</label>
							</div>
						
							<div id="login_submit">
								<input id="button_submit" type="submit" value="SUBMIT"/>
							</div>
						</div>
					</form>
				</div>
				
				<div id="event">
					<div id="event_heading">
						<h1>EVENT</h1>
					</div>
					
					<div id="event_content"><marquee id="marquee" direction="up" scrollamount="4" width="auto">
						<ul>
							<%
								List<Event> list_Event = EventDao.getRecords();
								for(Event e:list_Event) {	%>
									<li><a id="<%= e.getID() %>" class="event_content_txt" onMouseOver="MarqueeStop()" onMouseOut="MarqueeStart()"><%= e.getTitle() %></a></li>	<%
								}
							%>
						</ul></marquee>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>