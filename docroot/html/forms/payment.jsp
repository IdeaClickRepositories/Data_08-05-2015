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
<h4 style="color:Blue;"><i>No of Licenses:</i></h4>
<table border="2" style="width: 700px;  margin-bottom: 3px; padding: 5px">
	<tr>
		<td>No of Licenses:</td>
		<td><input name="license" id="license" class="form-control field-required" type="number" style="width: 200px"></td>
		<td>Price per License:</td>
		<td><input name="pricelicense" id="pricelicense" class="form-control field-required" type="text" style="width: 200px" readonly="readonly"></td>
	</tr>
</table>

<h4 style="color:Blue;"><i>Payment method-CreditCard,BankTransfer,PayPal,NetBanking</i></h4>
<div id="myCheckgroup">
<table  style="width: 700px;  margin-bottom: 8px; padding: 5px" cellspacing="5px" border="2">
<tr>
    <td><input type="Radio" value="0" name="trial"></td>
    <!-- <td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/americanexpress.jpg" />
  </a></td>
  <td> <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/visa.png" />
  </a></td>
  <td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/discover.png" />
  </a></td>  -->
  <td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <!-- <img class="picture" src="<%=renderRequest.getContextPath()%>/images/mastercard.jpg" /> -->
    <img src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/cc-badges-ppcmcvdam.png" alt="Pay with PayPal Credit or any major credit card" />
  </a></td>
<td>
  <input type="Radio" value="1" name="trial"></td>
   <td><div id="myGallery">
   <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
   <!--  <img class="picture" src="<%=renderRequest.getContextPath()%>/images/paypal.png" /> -->
	<img src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/checkout-logo-small.png" alt="Check out with PayPal" />  
  </a></div>
  
  </td>
  <td><input type="Radio" value="2" name="trial"></td>
  <td> <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/netbank.png" /></a>
 </td>
</tr>
</table>
</div>

<table border="2" style="width: 700px;  margin-bottom: 3px; padding: 5px" align="left" >
	<tr>
		<td>Card Number:</td>
		<td><input name="cno" id="license" class="form-control field-required" type="number"></td>
		<td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    	<img class="picture" src="<%=renderRequest.getContextPath()%>/images/secure.jpg" />
  		</a></td>
  		<td>Expires on:</td>
  		<td><input  id="datepk"class="form-control" type="text" placeholder="mm/dd/yy"></td>
	</tr>
	<tr>
		<td>Billing ZIP code:</td>
		<td colspan="4"><input name="cno" id="license" class="form-control field-required" type="text"></td>
	</tr>
	<tr >
		<td style="margin-top: 20px; padding-top: 30px">Your Total:</td>
		<td style="margin-top: 20px; padding-top: 30px" colspan="4"><input type="text" readonly="readonly"> </td>
	</tr>
	<tr align="center" >
		<td colspan="5" align="center" ><input class="btn btn-primary" type="submit" value="Submit"><input class="btn btn-primary" type="submit" value="Next">
		</td>
	</tr>
</table>
</form>
<script>

YUI().use(
          'aui-image-viewer',
          function(Y) {
            new Y.ImageViewer(
              {
                links: '#myGallery a',
                zIndex: 1
              }
            ).render();
          }
        );
       
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
		        trigger: '#datepk',
		        popover: {
		          zIndex: 1
		        },
		        on: {
		          selectionChange: function(event) {
		            console.log(event.newSelection)
		          }
		        }
		      }
		    );
		  }
		);
</script>
</body>
</html>
