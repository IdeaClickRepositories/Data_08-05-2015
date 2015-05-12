<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment</title>
  <script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
      <link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
      </head>
<body>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="G78595SPQ5GJ2">
<table style="margin-left: 250px">
<tr><td><input type="hidden" name="on0" value="IMP-Package">IMP-Package</td></tr><tr><td><select name="os0" style="border-radius: 0px 10px 0px 10px; width: 200px" >
	<option value="Coorporate" >Coorporate $1,000.00 USD</option>
	<option value="Small-Industry">Small-Industry $900.00 USD</option>
	<option value="Education-Institute">Education-Institute $500.00 USD</option>
</select> </td></tr>
<tr><td><input type="hidden" name="on1" value="Organization Business Type" ><br>Organization Business Type</td></tr><tr><td><input type="text" name="os1" maxlength="200" style="border-radius: 0px 10px 0px 10px; width: 200px;"></td></tr>
</table>
<br>
<input type="hidden" name="currency_code" value="USD" style="margin-left: 250px">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online." style="margin-left: 270px">

<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>


</body>
</html>
