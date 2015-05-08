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
<h3><b>Create Campaign</b></h3>
<form id="myForm">
 <div class="form-group">
    <label class="control-label" for="campaignnm">Campaign Name:</label>
    <div class="controls">
      <input name="campnm" id="campnm" class="form-control field-required" type="text">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label" for="name">Start Date:</label>
<textarea class="form-control" type="text" placeholder="mm/dd/yy"></textarea>
</div>
 <div class="form-group">
    <label class="control-label" for="name">End Date:</label>
<textarea class="form-control" type="text" placeholder="mm/dd/yy"></textarea>
</div>
<div class="form-group">
    <label class="control-label" for="name">Open for departments:</label>
    <div class="controls">
      <select id="dept" name="depts">
      <option value="0">Please select one..</option>
    <option value="1"></option>
    <option value="2"></option></select>
    </div>
</div>
<table>
<div class="form-group">
    <tr>
        <td>
    <label class="control-label" for="name">Notify frequency:</label></td>
    <td><div class="controls">
    <input name="no" id="no" class="form-control field-required" type="number">
    </div>
    </td>
    <td><select id="dept" name="depts">
    <option value="0">Hours</option>
    <option value="1">Days</option>
    <option value="2">weeks</option>
    <option value="3">months</option>
    <option value="4">years</option></select>
    </td>
    </tr>
   </div>
</table>


     
     
<input class="btn btn-primary" type="submit" value="Check">
</form>
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
                        trigger: 'textarea',
                        mask: '%m/%d/%y',
                        calendar: {
                          selectionMode: 'multiple'
                        },
                        popover: {
                          zIndex: 1
                        },
                        panes: 2
                      }
                    );
                  }
                );
</script>
</body>
</html>