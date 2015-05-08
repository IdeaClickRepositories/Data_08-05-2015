<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<portlet:renderURL var="OrgRegURL">
<portlet:param name="mvcPath" value="/html/forms/org_reg.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="UserRegURL">
<portlet:param name="mvcPath" value="/html/forms/user_reg.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="Forget_PassURL">
<portlet:param name="mvcPath" value="/html/forms/forget_password.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="loginURL">
<portlet:param name="mvcPath" value="/html/forms/login.jsp"/>
</portlet:renderURL>
<!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
      <link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
      <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">  
      <link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
      <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">  
      
      <script src="http://code.jquery.com/jquery-1.9.1.js"></script>   
      <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>   
    
  <style>   
  .toggler { 
    width: 500px; 
    height: 200px; 
  } 
  #effect { 
    position: relative; 
    width: 240px; 
    height: 135px; 
    padding: 0.4em; 
  } 
  #effect h3 { 
    margin: 0; 
    padding: 0.4em; 
    text-align: center; 
  } 
  </style>   
  <script>   
 $(function() { 
	$("#effect").hide();
    $("#run").click(function () { 
    $("#effect").toggle("clip") 
}); 
 });
 </script>
 </head>
 <body>
 <form action="" method="get">
    User name:<input type="text" name="username"><br/>
    Password  :<input type="password" name="password"><br/>
    <p><button class="btn btn-success" >login</button>
      <input type="button" value="Forget password" id="run" class="btn"> </p><br/>
    <p><a href="<%=OrgRegURL%>">Organization Registration</a>
    <a href="<%=UserRegURL%>">User Registration</a></p>
    <div class="toggler"> 
   <div id="effect" class="ui-widget-content ui-corner-all"> 
    <p> 
      <h5>Email Id:</h5>
      <input type="text" name="username"><br/>
      <a class="btn" href="<%=loginURL%>">Reset Password</a>
     
  </div>
  </div>
  <script></script> 	
 </body>
 </html>