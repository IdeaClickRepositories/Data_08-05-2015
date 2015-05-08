 
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

  <div class="form-group">
    <label class="control-label" for="name">Organization Name:</label>
    <div class="controls">
      <input name="org_name" id="name" class="form-control field-required" type="text" style="width:200px;">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label" for="age">Contact No:</label>
    <div class="controls">
      <input name="phno" id="phno" class="form-control field-required field-digits" type="text" maxlength="10">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label" for="email">E-mail:</label>
    <div class="controls">
      <input name="email" id="email" class="form-control field-required field-email" type="text">
    </div>
  </div>
 <div class="form-group">
    <label class="control-label" for="email">Area of Business:</label>
   <select id="" name="areabuss" class="form-control field-required">
   <option selected="0"></option>
    <option value="1">BioTech</option>
    <option value="2">Mechanical</option>
    <option value="3">IT</option>
    <option value="4">E-commerce</option>
    </select>
 </div>
 
<div class="form-group">
    <label class="control-label" for="email">Address:</label>
    <textarea id="myTextarea" class="form-control"></textarea>
<p id="myCounter"></p>
</div>

<div id="shipping">
  <p>
    <select name="state" id="Country">
      <option value="">Choose a Country...</option>
    </select>
  </p>
  <p>
    <select name="city" id="state">
      <option value="">Choose a State...</option>
    </select>
  </p>
  <p>
    <select name="city" id="city">
      <option value="">Choose a City...</option>
    </select>
  </p>
</div>

  <div class="form-group">
    <label class="control-label" for="pin">PinCode:</label>
    <div class="controls1">
      <input name="pin" id="pin" type="number" maxlength="6">
    </div>
  </div>
 
    <div class="form-group">
    <label class="control-label" for="users">No of users:</label>
    <div class="controls">
      <input name="users" id="users" class="form-control field-required field-digits" type="number">
    </div>
  </div>
 
 <div id="myCheckgroup">
 <label class="control-label" for="trial">Text here trial:</label>
 <p>
  <input type="Radio" value="yes" name="trial"> <br>
  <input type="Radio" value="No" name="trial"> </p>
</div>
  <br>
  <input type="submit" value="Submit" onClick="return confirm('Congrats, We have successfully registered your organization!!!')">
 <a class="btn" href="<%=paymentURL%>">Next</a>

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