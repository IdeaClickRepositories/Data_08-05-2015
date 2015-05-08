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
</head>
<body>
<h2><b>Change Password</b></h2>
<form id="myForm">
<div class="form-group">
    <label class="control-label" for="picture">Old Password:</label>
    <div class="controls">
      <input name="passwrd" id="passwrd" class="form-control" type="password">
    </div>
  </div>


 <div class="form-group">
    <label class="control-label" for="campaignnm">New Password:</label>
    <div class="controls">
      <input name="pass" id="pass" class="form-control field-required" type="password">
    </div>
  </div>
 
  <div class="form-group">
    <label class="control-label" for="campaignnm">Confirm Password:</label>
    <div class="controls">
      <input name="cpass" id="cpass" class="form-control field-required" type="password">
    </div>
  </div>
 <p><a href="profile.jsp"><button class="btn btn-success" >Change</button></a></p>
  
 </form>
<script>
</script>
</body>
</html>