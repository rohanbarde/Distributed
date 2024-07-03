<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href="CSS/style.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container myflex ">
		<div class="nav flex-column nav-pills menubar mt-5" id="v-pills-tab"
			role="tablist" aria-orientation="vertical">
			<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
				href="#v-pills-home" role="tab" aria-controls="v-pills-home"
				aria-selected="true">Company Master</a> <a class="nav-link"
				id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
				role="tab" aria-controls="v-pills-profile" aria-selected="false">Profile</a>
			<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
				href="#v-pills-messages" role="tab" aria-controls="v-pills-messages"
				aria-selected="false">Messages</a> <a class="nav-link"
				id="v-pills-settings-tab" data-toggle="pill"
				href="#v-pills-settings" role="tab" aria-controls="v-pills-settings"
				aria-selected="false">Settings</a>
		</div>
		<div class="tab-content" id="v-pills-tabContent">
			<div class="tab-pane fade show active p-5  " id="v-pills-home"
				role="tabpanel" aria-labelledby="v-pills-home-tab">
				<!-- - Company Master Tabs -->
				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="pills-home-tab" data-toggle="pill" href="#pills-home"
						role="tab" aria-controls="pills-home" aria-selected="true">New Vender</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#pills-profile"
						role="tab" aria-controls="pills-profile" aria-selected="false">View Vender</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						id="pills-contact-tab" data-toggle="pill" href="#pills-contact"
						role="tab" aria-controls="pills-contact" aria-selected="false">Search Vender</a>
					</li>
				</ul>
				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="pills-home"
						role="tabpanel" aria-labelledby="pills-home-tab">Add New Company From here</div>
					<div class="tab-pane fade" id="pills-profile" role="tabpanel"
						aria-labelledby="pills-profile-tab">View Company Grid</div>
					<div class="tab-pane fade" id="pills-contact" role="tabpanel"
						aria-labelledby="pills-contact-tab">Search Company Logics</div>
				</div>

			</div>
			<div class="tab-pane fade  p-5" id="v-pills-profile" role="tabpanel"
				aria-labelledby="v-pills-profile-tab">Profile</div>
			<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
				aria-labelledby="v-pills-messages-tab">Message</div>
			<div class="tab-pane fade" id="v-pills-settings" role="tabpanel"
				aria-labelledby="v-pills-settings-tab">Setting</div>
		</div>
		<div class="content"></div>
	</div>

</body>
</html>