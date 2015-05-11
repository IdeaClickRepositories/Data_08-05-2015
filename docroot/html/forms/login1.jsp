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
<link href="login.css" rel="stylesheet" type="text/css" />
<title>Login</title>
</head>

<body onload="document.login.username.focus();" style="padding: auto; margin: auto;">
<form name='login' onSubmit="return formValidation();">

<div id="main">
	<div class="box" align="center">Organization Name:&nbsp; &nbsp;&nbsp; &nbsp;<input type="text" name="org_name" style="border-radius: 0px 10px 0px 10px; width: 250px"></div><!-- end of box -->
	
	<div class="box" align="center">UserName:&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input name="username" title="Enter Username" type="text" style="border-radius: 0px 10px 0px 10px; width: 250px"></div><!-- end of box -->
		
	<div class="box" align="center">Password:&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="password" name="pwd" id="pwd" style="border-radius: 0px 10px 0px 10px; width: 250px"></div><!-- end of box -->
	
	<div id="box" align="center"><input type="Submit" name="Submit" value="Submit" style="border-radius:5px;  padding: 5px"/><a href="#" style="color: purple; font-size: smaller;">&nbsp; &nbsp; <i>Forget Password??</i></a></div><!-- end of box -->

	<div class="box" align="center"><a href="<%=OrgRegURL%>" style="color: purple; text-decoration: underline; font-size: medium;">Organization Register</a></div><!-- end of box -->
</div><!-- end of main -->  	
</table>
</form>
</body>
</html>
