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
<h5 style="color:Blue;"><i>No of Licenses</i></h5>
  <div class="form-group">
    <label class="control-label" for="name">No of Licenses:</label>
  
      <input name="license" id="license" class="form-control field-required" type="number">
</div>

 <div class="form-group">
    <label class="control-label" for="name">Price per License:   $----</label>
</div>

<h5 style="color:Blue;"><i>Payment method - CreditCard, BankTransfer,PayPal, NetBanking</i></h5>

<div id="myCheckgroup">

  <table>
<tr>
    <td><input type="Radio" value="0" name="trial">
    <div id="myGallery"></td>
    <td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/americanexpress.jpg" />
  </a></td>
  <td> <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/visa.png" />
  </a></td>
  <td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/discover.png" />
  </a></td>
  <td><a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/mastercard.jpg" />
  </a></td>
<td>
  <input type="Radio" value="1" name="trial"></td>
   <td><div id="myGallery">
   <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/paypal.png" />
  </a></td>
  <td><input type="Radio" value="2" name="trial"></td>
  <td> <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/netbank.png" />
</div>
 </a></td>
</tr></table>
<div class="form-group">
    <label class="control-label" for="name">Card Number:</label>
         <input name="cno" id="license" class="form-control field-required" type="number">
          <a href="<%=renderRequest.getContextPath()%>/images/discover.png" title="discover.">
    <img class="picture" src="<%=renderRequest.getContextPath()%>/images/secure.jpg" />
  </a>
</div>
<div class="form-group">
    <label class="control-label" for="name">Expires on:</label>
   <input  id="datepk"class="form-control" type="text" placeholder="mm/dd/yy">
</div>
<div class="form-group">
    <label class="control-label" for="name">Billing ZIP code:</label>
         <input name="cno" id="license" class="form-control field-required" type="text">
</div>
<hr>
<h5>Your Total:---</h5>
  <br>
  <input class="btn btn-primary" type="submit" value="Submit">
  <input class="btn btn-primary" type="submit" value="Next">

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