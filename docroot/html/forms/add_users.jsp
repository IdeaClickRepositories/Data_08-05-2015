<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add_users</title>
<script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
<link href="login.css" rel="stylesheet" type="text/css" />
 
 </head>
 <body style="background-image: url('C:\Liferay\liferay-plugins-sdk-6.2\portlets\IdeaClick-portlet\docroot\image\1pink.jpg');">
 <h3><b>Add Users</b></h3>
 <div id="main">
 <form id="myForm">
 	<div class="box" style="margin-left: 80px; margin-right: 80px"><textarea cols="100" rows="10" style="border-radius: 0px 10px 0px 10px; width: 450px"></textarea>
     </div><!-- end of box -->
 	<br>	
 	<div class="box" style="margin-left: 380px"><input type="submit" value="Upload"name="Upload">&nbsp; 
        <input type="submit" value="Check">&nbsp;
        <input type="submit" value="Create users">
        </div><!-- end of box -->
 	<br>		
 	<div class="box" style="margin-left: 300px"><input type="button" name="previous" value="previous"  onclick="window.open('manage_users.jsp')"/>
 	</div><!-- end of box -->
    
 </form>
 </div><!-- end of main --> 

<script>
YUI().use(
          'aui-char-counter',
          function(Y) {
            new Y.CharCounter(
              {
                counter: '#myCounter',
                input: '#myTextarea',
                maxLength: 400,
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
