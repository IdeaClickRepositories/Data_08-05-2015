<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

    
<portlet:renderURL var="OrgRegURL">
<portlet:param name="mvcPath" value="/html/forms/org_reg.jsp"/>
</portlet:renderURL>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>


</head>

<body onload="document.login.username.focus();">

	
<form name='login' onSubmit="return formValidation();">  
<table align="center" style="font-size:20px" cellpadding="25px" border="1">
<tr>
    <td width="30">Username</td>
    <td width="70"><input placeholder="username" name="username" title="Enter Username" type="text" style="font-size:18px" onkeyup="">
	</td>
</tr>
<tr>
   
    <td width="30">Password</td>
    <td><input placeholder="pswd" name="password" title="Enter password" type="password" style="font-size:18px" maxlength="12">
	</td>
	</tr>
	<tr>
		<td height="15" colspan="2" align="center"><input type="Submit" name="Submit" value="Submit" font-size="24px" />
		<a href="<%=OrgRegURL%>">Organization Registration</a><br/></td>
	</tr>
	
</table>

</form>

	
</body>
</html>
