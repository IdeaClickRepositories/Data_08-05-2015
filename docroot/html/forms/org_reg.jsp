 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<portlet:renderURL var="paymentURL">
<portlet:param name="mvcPath" value="/html/forms/payment.jsp"/>
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
<h4>Register</h4>
<form id="myForm">

 <table border="2" align="center" style="width: 700px;  margin-bottom: 3px; padding: 3px"  cellpadding="5px"> 
<tr>
	<td>Organization Name<b style="color: red;">*</b>:
	</td>
	<td>
		<input name="org_name" id="name" class="form-control field-required" type="text" style="width:500px;">
	</td>
</tr>
<tr>
	<td>Area of Business<b style="color: red;">*</b></td>
	<td><select id="" name="areabuss" class="form-control field-required">
    <option value="1">BioTech</option>
    <option value="2">Mechanical</option>
    <option value="3">IT</option>
    <option value="4">E-commerce</option>
    </select></td>
</tr>
</table>
 <table border="2" align="center" style="width: 700px; margin-bottom: 3px; padding: 3px"  cellpadding="5px">
 <tr>
 	<td>Contact No<b style="color: red;">*</b>:</td>
 	<td><input name="phno" id="phno" class="form-control field-required field-digits" type="text" maxlength="10" style="width: 150px"></td>
 	<td>E-mail<b style="color: red;">*</b>:</td>
 	<td><input name="email" id="email" class="form-control field-required field-email" type="text" style="width: 330px"></td>
 </tr>
 <tr>
 	<td>Address:</td>
 	<td colspan="3"><textarea id="myTextarea" class="form-control" cols="300" rows="3" style="width: 500px; height: 50px"></textarea></td>
 </tr>
 <tr>
 	<!-- <td>Country:</td>
 	<td><select name="state" id="Country">
      <option value="">Choose a Country...</option>
    </select></td>
    <td>State:</td>
    <td><select name="city" id="state">
      <option value="">Choose a State...</option>
    </select></td>
 </tr>
 <tr>
 	<td>City:</td>
 	<td><select name="city" id="city">
      <option value="">Choose a City...</option>
    </select></td>
    <td>Pin code:</td>
 	<td><input type="text" maxlength="6"></td> -->
 	
     <td colspan="4">   
        <br/>Select Country:
        <select id="country" name="country"></select>
        Select State:
        <select name="state" id="state"></select>
         <script language="javascript">
            populateCountries("country", "state");
            populateCountries("country2");
        </script>
        
    </td>
 	
 </tr>
 </table>
<table border="2" align="center" style="width: 700px;margin-bottom: 3px; padding: 3px" cellpadding="5px">
<tr>
	<td style="width: 100px">No of Users<b style="color: red;">*</b>:</td>
	<td style="width: 200px"><input name="users" id="users" class="form-control field-required field-digits" type="number" style="width: 100px"></td>
	<td style="width: 100px">Text here trial<b style="color: red;">*</b>:</td>
	<td><input type="radio" name="trial" value="yes">Yes <input type="radio" name="trial" value="no">No</td>
</tr>
</table>
<table align="center" style="width: 700px; height: 10px; margin-left: 250px">
	<tr>
		<td><input type="submit" value="Submit" onClick="return confirm('Congrats, We have successfully registered your organization!!!')">
 <a class="btn" href="<%=paymentURL%>">Next</a></td>
	</tr>
</table>
  

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
          'aui-char-counter',
          function(Y) {
            new Y.CharCounter(
              {
                counter: '#myCounter', align:'right',
                input: '#myTextarea',
                maxLength: 100,
                on: {
                  maxLength: function(event) {
                    alert('The max length limit was reached');
                  }
                }
              }
            );
          }
        );
       
YUI().use(
          'aui-io-request',
          'node',
          function(Y) {
            // create a new asynchonous request to grab all states
            Y.io.request(
              'http://alloyui.com/io/data/states.json',
              {
                dataType: 'json',
                on: {
                  success: function() {
                    // gets the result of this asynchronous request
                    var data = this.get('responseData');
                    states = data.states;

                    // iterates on all states to create a new <option> on that <select>
                    for (i = 0; i < states.length; i++) {
                      Y.one('#state').append('<option value="' + states[i].code + '">' + states[i].name + '</option>');
                    }
                  }
                }
              }
            );

            Y.one('#state').on(
              'change',
              function() {
                var cityCode = this.get('value');

                if (cityCode !== '') {
                  // creates a new asynchronous request to grab the cities corresponding to that state
                  Y.io.request(
                    'http://alloyui.com/io/data/' + cityCode + '.json',
                    {
                      dataType: 'json',
                      on: {
                        success: function() {
                          // gets the result of this asynchronous request
                          var data = this.get('responseData');
                          cities = data.cities;
                          options = '';

                          // iterates on all states to create a new <option> on that <select>
                          for ( i = 0; i < cities.length; i++) {
                            options += '<option value="' + cities[i].name + '">' + cities[i].name + '</option>';
                          }

                          Y.one('#city').setHTML(options);
                        }
                      }
                    }
                  );
                }
              }
            );
          }
        );

YUI().use(
          'aui-button',
          function(Y) {
            new Y.ButtonGroup(
              {
                boundingBox: '#myCheckgroup',
                type: 'radio'
              }
            ).render();
          }
        );
       
YUI().use(
          'aui-dropdown',
          function(Y) {
            new Y.Dropdown(
              {
                boundingBox: '#myDropdown',
                trigger: '#myTrigger'
              }
            ).render();
          }
        );



</script>
</body>
</html>
