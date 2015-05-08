<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
      <link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
</head>
<body>
<h4>User Registration</h4>
<form id="myForm">

<div class="form-group">
    <label class="control-label" for="name">User Name:</label>
    <input name="usernm" id="usernm" class="form-control field-required" type="text">
</div>
 <div class="form-group">
    <label class="control-label" for="email">E-mail:</label>
    <div class="controls">
      <input name="email" id="email" class="form-control field-required field-email" type="text">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label" for="dept">Department Name:</label>
    <div class="controls">
      <select id="dept" name="depts">
    <option value="IT"></option>
    <option value="Healthcare"></option>
    <option value="Mobile"></option></select>
    </div>
  </div>
 
  <div class="form-group">
    <label class="control-label" for="name">Contact No.:</label>
    <input id="myInput" name="phno" id="phno" class="form-control"><br/>
</div>
<br>
<div class="form-group">
    <label class="control-label" for="name">Organization Id:</label>
    <input name="orgnm" id="orgnm" class="form-control field-required" type="text"><br>
</div>
<br>
<input class="btn btn-primary" type="submit" value="Submit">
<input class="btn btn-primary" type="submit" value="Next">
</form>

<script>
YUI().use(
		  'aui-char-counter',
		  function(Y) {
		    new Y.CharCounter(
		      {
		        input: '#myInput',
		        maxLength: 10
		      }
		    );
		  }
		  
		);
YUI().use(
          'aui-form-validator',
          function(Y) {
            new Y.FormValidator(
              {
                boundingBox: '#myForm'
              }
            );
          }
        );

</script>
</body>
</html>