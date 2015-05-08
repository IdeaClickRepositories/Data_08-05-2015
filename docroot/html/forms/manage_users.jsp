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
<h2 style="color:maroon"><i>Congrulations:</i></h2>
<p>You have successfully registered as an <u>Organization name</u> with us for <u>100</u> users</p>
<form id="myForm">
<div class="form-group">
    <label class="control-label" for="name">Grant user access:</label>
    <div class="controls">
      <select id="dept" name="depts">
      <option value="0">Please select one..</option>
    <option value="1">Add Users</option>
    <option value="2">Delete Users</option></select>
    </div>
</div>
<div class="form-group">
    <label class="control-label" for="name">Active Directory Details:</label>
    <textarea id="myTextarea" class="form-control"></textarea>
<p id="myCounter"></p>
</div>
<input class="btn btn-primary" type="submit" value="Check">

<h5>Request more user Licenses</h5>
 <div class="form-group">
    <label class="control-label" for="email">Number of additional users:</label>
    <div class="controls">
      <input name="addusers" id="addusers" class="form-control field-required field-email" type="number">
    </div>
  </div>
<input class="btn btn-primary" type="submit" value="Next">
</form>
<script>

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
YUI().use(
          'aui-char-counter',
          function(Y) {
            new Y.CharCounter(
              {
                counter: '#myCounter',
                input: '#myTextarea',
                maxLength: 100,
                on: {
                  maxLength: function(event) {
                    alert('The max length limit was reached');
                  }
                }
              }
            );
          }
        );
</script>
</body>
</html>