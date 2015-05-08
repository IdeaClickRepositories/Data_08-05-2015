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
</head>
<body>
<h3><b>Edit Profile</</b></h3>
<form id="myForm">

<div class="form-group">
    <label class="control-label" for="picture">Upload photo:</label>
    <div class="controls">
      <input name="picture" id="picture" class="form-control" type="file">
    </div>
  </div>


 <div class="form-group">
    <label class="control-label" for="campaignnm">Name:</label>
    <div class="controls">
      <input name="nm" id="nm" class="form-control field-required" type="text">
    </div>
  </div>
 
  <div class="form-group">
    <label class="control-label" for="campaignnm">Organization Name:</label>
    <div class="controls">
      <input name="orgnm" id="orgnm" class="form-control field-required" type="text">
    </div>
  </div>
 
  <div class="form-group">
    <label class="control-label" for="campaignnm">Address:</label>
    <div class="controls">
      <textarea cols="25" rows="3" class="form-control field-required" type="text"></textarea>
    </div>
  </div>

  <div class="form-group">
    <label class="control-label" for="campaignnm">Contact Number:</label>
    <div class="controls">
      <input name="orgnm" id="orgnm" class="form-control field-required" type="number" maxlength="10">
    </div>
  </div>
     
 <p><button class="btn btn-success" >Update</button>

</form>
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
                      gender: {
                        required: true
                      },
                      name: {
                        rangeLength: [2, 50],
                        required: true
                      },
                      picture: {
                        acceptFiles: 'jpg, gif, png',
                        required: true
                      },
                      url: {
                        url: true
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