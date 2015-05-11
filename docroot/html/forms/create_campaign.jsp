<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create_Campaign</title>
<script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
<link href="login.css" rel="stylesheet" type="text/css" />

</head>
<body>
<h3><b>Create Campaign</b></h3>
<div id="main">
<form id="myForm">

	<div class="box" style="margin-left: 108px">Campaign Name<b style="color: red;">*</b>: &nbsp; &nbsp;
	<input name="campnm" id="campnm" class="form-control field-required" type="text" style=" border-radius: 0px 10px 0px 10px; width: 250px">
    </div><!-- end of box -->
	<br>	
	<div class="box" style="margin-left: 108px">Start Date<b style="color: red;">*</b>: &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<input  id="datepk" class="form-control field-required" type="text" style=" border-radius: 0px 10px 0px 10px; width: 250px"></div><!-- end of box -->
	<br>		
	<div class="box" style="margin-left: 108px">End Date<b style="color: red;">*</b>: &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<input  id="datepk" class="form-control field-required" type="text" style=" border-radius: 0px 10px 0px 10px; width: 250px"></div><!-- end of box -->
	<br>
	
	
	<div class="box" style="margin-left: 108px">Open for Departments<b style="color: red">*</b>: &nbsp; &nbsp;<select id="dept" name="depts" style=" border-radius: 0px 10px 0px 10px; width: 150px">
   		<option value="0">Please select one..</option>
    	<option value="1"></option>
    	<option value="2"></option></select>
    </div><!-- end of box -->
    <br>
    <div class="box" style="margin-left: 108px">Notify frequency<b style="color: red">*</b>: &nbsp; &nbsp;<input name="no" id="no" class="form-control field-required" type="number" style=" border-radius: 0px 10px 0px 10px; width: 100px">
    <select id="dept" name="depts" style=" border-radius: 0px 10px 0px 10px; width: 100px" class="form-control field-required"> 
    <option value="0">Hours</option>
    <option value="1">Days</option>
    <option value="2">weeks</option>
    <option value="3">months</option>
    <option value="4">years</option></select>
    </div><!-- end of box -->
	<br>
	<div class="box" style="margin-left: 280px; margin-bottom: 20px">   
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
		  'aui-datepicker',
		  function(Y) {
		    new Y.DatePicker(
		      {
		        trigger: '#datepk',
		        popover: {
		          zIndex: 1
		        },
		        on: {
		          selectionChange: function(event) {
		            console.log(event.newSelection)
		          }
		        }
		      }
		    );
		  }
		);
</script>
</body>
</html>
