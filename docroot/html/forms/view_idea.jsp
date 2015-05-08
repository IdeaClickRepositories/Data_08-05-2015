<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.4.3.min.js"></script>
        <script>
            $(document).ready(function(){
                $('#AddButton').click( function() {
                    var counter = $('#TextBox').val();
                    counter++ ;
                    $('#TextBox').val(counter);
                });
            });
        </script>
<script src="/IdeaClicks-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClicks-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
</head>
<body>
       
<form id="myForm">
 
<table>
    <tr>
         
        <td><input name="idea" id="idea" type="text" style="width: 500px; height: 50px; border:none; readonly="readonly" background-color:#EDE0F6; border-radius:15px 0px 15px 0px box-shadow: 10px 10px 5px grey;"></td>
   
    </tr>
</table>
           
<table style="margin-left: 5px; margin-right: 5px;" cellpadding="10px">
    <tr>
       
        <td>
            <a href="#"><img  src="<%=renderRequest.getContextPath()%>/images/like.png" height="25px" width="25px"></a></td>
          <td><label id="lbl">amol</label></td>
          <td><label name="TextBox" id="TextBox" value="0">aaa</label></td>
          <td><input type="Button" id='AddButton' value="+" /></td>
           
        
        <td>
            <a href="#" id='AddButton'><img  src="<%=renderRequest.getContextPath()%>/images/dislike.png" height="25px" width="25px"></a>
        </td>
        <td>
            <a href="#"><img  src="<%=renderRequest.getContextPath()%>/images/comment.png" height="25px" width="25px"></a>
        </td>
    </tr>
</table>

</form>
  
</body>
</html>
