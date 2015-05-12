
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
<link href="login.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function check_password_safety(pwd){
var msg = "";
var points = pwd.length;
var password_info = document.getElementById('password_info');
var has_letter		= new RegExp("[a-z]");
var has_caps		= new RegExp("[A-Z]");
var has_numbers		= new RegExp("[0-9]");
var has_symbols		= new RegExp("\\W");
if(has_letter.test(pwd)) 	{ points += 4; }
if(has_caps.test(pwd)) 		{ points += 4; }
if(has_numbers.test(pwd)) 	{ points += 4; }
if(has_symbols.test(pwd)) 	{ points += 4; }
if( points >= 24 ) {
	msg = '<span style="color: #0f0;">Your password is strong!</span>';
} else if( points >= 16 ) {
	msg = '<span style="color: #00f;">Your password is medium!</span>';
} else if( points >= 12 ) {
	msg = '<span style="color: #fa0;">Your password is weak!</span>';
} else {
	msg = '<span style="color: #f00;">Your password is very weak!</span>';
}
password_info.innerHTML = msg ;
}
function check() {
    if(document.getElementById('pwd').value === document.getElementById('confirm_password').value) {
        document.getElementById('message').innerHTML = "match!!";
    } else {
        document.getElementById('message').innerHTML = "Please enter the same password";
    }
}
</script>
</head>
<body>
<h3><b>Change Password</b></h3>
<div id="main">
 <form id="myForm">
 	<div class="box" style="margin-left: 80px; margin-right: 80px">Old Password<b style="color: red;">*</b>:<input name="passwrd" id="passwrd" class="form-control" type="password" style="border-radius: 0px 10px 0px 10px; width: 450px">
     </div><!-- end of box -->
 	<br>
 		
 	<div class="box" style="margin-left: 80px; margin-right: 80px">New Password<b style="color: red;">*</b>:<input type="password" name="pwd" id="pwd" size="20" onkeyup="return check_password_safety(this.value);" style="border-radius: 0px 10px 0px 10px; width: 450px"/>
    <span id="password_info"><b>Type your password!</b></span>
     </div><!-- end of box -->
     <br>
     
     <div class="box" style="margin-left: 80px; margin-right: 80px">Confirm Password<b style="color: red;">*</b>:<input type="password" name="confirm_password" id="confirm_password"class="form-control field-required" type="password" onchange="check()" style="border-radius: 0px 10px 0px 10px; width: 450px"/> 
<span id='message'></span>
     </div><!-- end of box -->
 	<br>
 	
 	<div class="box" style="margin-left: 280px"><a href="profile.jsp"><button class="btn btn-success" >Change</button></a>
        </div><!-- end of box -->
 	<br>		
 	
 </form>
 </div><!-- end of main --> 

<script>
</script>
</body>
</html>

   
