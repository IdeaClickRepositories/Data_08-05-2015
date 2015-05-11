<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="/IdeaClicks-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClicks-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
<link href="login.css" rel="stylesheet" type="text/css" />

</head>
<body>
<h3><b>Edit Profile</b></h3>
<div id="main">
<form id="myForm">

	<div class="box" style="margin-left: 108px">Upload photo: &nbsp; &nbsp;
	<input name="picture" id="picture" class="form-control" type="file" style=" border-radius: 0px 10px 0px 10px; width: 250px">
    </div><!-- end of box -->
	<br>	
	<div class="box" style="margin-left: 108px">Name<b style="color: red;">*</b>: &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<input name="nm" id="nm" class="form-control field-required" type="text" style=" border-radius: 0px 10px 0px 10px; width: 350px"></div><!-- end of box -->
	<br>		
	<div class="box" style="margin-left: 108px">Organization Name<b style="color: red;">*</b>:&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<input name="orgnm" id="orgnm" class="form-control field-required" type="text" style=" border-radius: 0px 10px 0px 10px; width: 275px"></div><!-- end of box -->
	<br>
	
	
	<div class="box" style="margin-left: 108px">Address<b style="color: red">*</b>: &nbsp; &nbsp;<textarea cols="25" rows="3" class="form-control field-required" id="address" style=" border-radius: 0px 10px 0px 10px; width: 355px"></textarea>
    </div><!-- end of box -->
    <br>
    <div class="box" style="margin-left: 108px">Contact Number<b style="color: red">*</b>: &nbsp; &nbsp;<input name="contact_no" id="contact_no" class="form-control field-required" type="text" maxlength="10" style=" border-radius: 0px 10px 0px 10px; width: 150px">
    </div><!-- end of box -->
	<br>
	<div class="box" style="margin-left: 280px; margin-bottom: 20px">   
        <button >Update</button>
    </div><!-- end of box -->
</form>
</div><!-- end of main -->   
<script>
YUI().use(
                  'aui-form-validator',
                  function(Y) {
                    var rules = {
                      email: {
                        email: true,
                        required: true
                      },
                      emailConfirmation: {
                        email: true,
                        equalTo: '#email',
                        required: true
                      },
                      address: {
                        required: true
                      },
                      nm: {
                        required: true
                      },
                      picture: {
                        acceptFiles: 'jpg, gif, png',
                        required: true
                      },
                      orgnm: {
                    	  required: true
                      }
                    };
                    var fieldStrings = {
                      email: {
                        required: 'Type your email in this field.'
                      },
                      name: {
                        required: 'Please provide your name.'
                      }
                    };
                    new Y.FormValidator(
                      {
                        boundingBox: '#myForm',
                        fieldStrings: fieldStrings,
                        rules: rules,
                        showAllMessages: true
                      }
                    );
                  }
                );
</script>
</body>
</html>
