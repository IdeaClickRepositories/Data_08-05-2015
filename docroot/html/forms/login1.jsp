<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>Login</title>
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
</script>
</head>

<body onload="document.login.username.focus();">
<form name='login' onSubmit="return formValidation();">  
<table border="2" align="center" style="margin-bottom: 3px; padding: 3px"  cellpadding="5px" width="430px">
<tr>
	<td>Organization Name:</td>
	<td><input type="text" name="org_name" ></td>
</tr>
<tr>
    <td>UserName:</td>
    <td><input name="username" title="Enter Username" type="text"></td>
</tr>
<tr>
   
    <td >Password:</td>
    <td><input type="password" name="pwd" id="pwd" size="20" onkeyup="return check_password_safety(this.value);" />
    <span id="password_info"><b>Type your password!</b></span></td>
</tr>
<tr>
		<td colspan="2" align="center"><input type="Submit" name="Submit" value="Submit" /></td>
		<a href="<%=OrgRegURL%>">Organization Registration</a><br/></td>
</tr>
	
</table>
</form>
</body>
</html>
