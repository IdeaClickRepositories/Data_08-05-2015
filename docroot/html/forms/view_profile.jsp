<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<portlet:renderURL var="Edit_profileURL">
<portlet:param name="mvcPath" value="/html/forms/edit_profile.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="Change_passURL">
<portlet:param name="mvcPath" value="/html/forms/change_password.jsp"/>
</portlet:renderURL>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
</head>
<body>
<h3><b>View Profile:</b></h3>
<form id="myForm">
<table border="1" align="center" style="width: 700px; height: 50px"> 
<tr>
	<td>
		Full Name<b style="color: red;">*</b>:
	</td>
	<td>
		<input name="nm" id="nm" class="form-control field-required" type="text" style="width: 530px">
	</td>
</tr>
</table>
<table border="1" style="width:690px; height: 200px"  align="center">
<tr>
<td>
<table style="width:400px; heigth:200px"  align="center">
<tr>
	<td>Email Address<b style="color: red;">*</b>:</td>
	<td>
		<input name="emailid" id="emailid" class="form-control field-required" type="text">
	</td>
</tr>
<tr>
	<td>Mobile No.<b style="color: red;">*</b>:</td>
	 <td> <input name="orgnm" id="orgnm" class="form-control field-required" type="text" maxlength="10"></td>
</tr>
<tr>
	<td>Date of Birth:</td>
	<td><input class="form-control" type="text" placeholder="Day, Mon dd, yyyy"></td>
</tr>
<tr>
	<td>Gender:</td>
	<td><input type="radio" name="sex" value="male">Male<br>
<input type="radio" name="sex" value="female">Female</td>
</tr>
</table>
</td>
<td>
<table style="width:300px; height:200px" align="left">
<tr>
<td>
	<textarea rows="6" cols="4"></textarea>
</td></tr>
<tr>
<td><input name="picture" id="picture" class="form-control" type="file"></td>
</tr>
</table>
</td>
</tr>
</table>
<table border="1" align="center" style="width: 700px; height: 50px">
<tr>
	<td>Address<b style="color: red;">*</b>:</td>
	<td><textarea cols="125" rows="3" class="form-control field-required"></textarea></td>
</tr>
<tr>
	<td>Country</td>
	<td><select></select></td>
	<td>State</td>
	<td><select></select></td>
</tr>
<tr>
	<td>City</td>
	<td><select></select></td>
	<td>Pin</td>
	<td><input type="text" name="pin"></td>
</tr>
</table>
 <table align="center" style="width: 700px; height: 10px; margin-left: 300px">
 <tr>
 	<td colspan="2"><a href="<%=Change_passURL%>">Change Password</</a><br></td>
 </tr>
 </table>
 <table align="center" style="width: 700px; height: 10px; margin-left: 250px">
 <tr>
 	<td><input class="btn btn-success" type="submit" value="Submit"></td>
 	<td><input class="btn btn-success" type="submit" value="Next"></td>
 </tr>
 </table>
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
YUI({ lang: 'ja' }).use(
		  'aui-datepicker',
		  function(Y) {
		    var datepicker = new Y.DatePicker(
		      {
		        trigger: 'input',
		        mask: '%a, %b %d, %Y',
		        popover: {
		          toolbars: {
		            header: [[
		              {
		                icon:'icon-trash',
		                label: 'Clear',
		                on: {
		                  click: function() {
		                    datepicker.clearSelection();
		                  }
		                }
		              },
		              {
		                icon:'icon-globe',
		                label: 'Travel date',
		                on: {
		                  click: function() {
		                    datepicker.clearSelection();
		                    datepicker.selectDates(new Date());
		                  }
		                }
		              }
		            ]]
		          },
		          zIndex: 1
		        }
		      }
		    );
		  }
		);

</script>
</body>
</html>