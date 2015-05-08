<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
    
<portlet:defineObjects />

<portlet:renderURL var="loginURL">
<portlet:param name="mvcPath" value="/html/forms/login.jsp"/>
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
 <h5>Email Id:<h5>
 <input type="text" name="username"><br/>
  <a class="btn" href="<%=loginURL%>">Reset Password</a>
		        
</body>
</html>