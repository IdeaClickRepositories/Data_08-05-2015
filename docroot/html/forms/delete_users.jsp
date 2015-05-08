<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
<link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
</head>
<body>
<form id="myForm">
<div class="form-group">
     <div class="controls">
     <table>
         <tr>
             <td><img src=""></td>
             <td><input name="search" id="search" class="" type="text"></td>
             <td><label class="control-label" for="search">Search</label></td>
         </tr>
     </table>
    </div>
  </div>
<div class="form-group">
<table>
    <tr>
        <td>
            <textarea cols="100" rows="10"></textarea>
        </td>
    </tr></table>
<p id="myCounter"></p>
</div>
<table>
  <tr><td><input type="submit" value="Upload"name="Upload"></td>
        <td><input type="submit" value="Check"></td>
        <td><input type="submit" value="Delete users"></td>
    </tr>
</table>
<table align="center" style="margin-top:30px">
    <tr>
        <td><input type="button" name="previous" value="previous"  onclick="window.open('manage_users.jsp')"/></td>
    </tr></table>
</form>
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