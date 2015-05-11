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
</head>
<body>
<h2 style="color:maroon"><i>Congratulations:</i></h2>
<p style="width: 700px; font-size: medium;">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<i><b style="letter-spacing: 0.75px">You have successfully registered as an <u>Organization name</u> with us for <u>100</u> users!!!</b></i></p>

<div id="main">
<form id="myForm">

	<div class="box" style="margin-left: 108px">Grant user access<b style="color: red;">*</b>: &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
	<select id="depts" name="depts" class="form-control field-required"  style="border-radius: 0px 10px 0px 10px; width: 150px">
      <option value="0">Please select one..</option>
    <option value="1">Add Users</option>
    <option value="2">Delete Users</option></select>
    </div><!-- end of box -->
		
	<div class="box" style="margin-left: 108px">Active Directory Details<b style="color: red;">*</b>: &nbsp;&nbsp; &nbsp;<textarea id="myTextarea" class="form-control" rows="3" cols="25" style=" border-radius: 0px 10px 0px 10px; width: 250px"></textarea>
			 <p id="myCounter" style=" margin-right: 20px" align="right"></p></div><!-- end of box -->
			
	<div class="box" style="margin-left: 108px"><input class="btn btn-primary" type="submit" value="submit"></div><!-- end of box -->
	<br><br>
	<h4 style="width: 400px">&nbsp; &nbsp;&nbsp; &nbsp;<i>Request more user Licenses</i></h4>
	<br>
	<div class="box" style="margin-left: 108px">Number of additional users<b style="color: red">*</b>: &nbsp; &nbsp;<input name="addusers" id="addusers" class="form-control field-required" type="number" style=" border-radius: 0px 10px 0px 10px; width: 150px;"></div><!-- end of box -->
	
	<div class="box" style="margin-left: 108px; margin-bottom: 20px">   
        <input class="btn btn-primary" type="submit" value="Next">
    </div><!-- end of box -->
        
    
</form>
</div><!-- end of main -->   
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
