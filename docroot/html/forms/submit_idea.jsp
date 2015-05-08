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
<h4>Submit Idea</h4>
<form id="IdeaForm">
  
  <div class="job" id="job1">
    <label class="control-label" for="position1">Title: </label>
    <input class="textbox" type="text" style=" height=" id="position1"><br>
    <label class="control-label" for="desc">Description: </label>
    <textarea class="form-control" id="desc"></textarea><br>
   <div class="form-group">
    <label class="control-label" for="dept">Select Category:</label>
    <div class="controls">
      <select id="dept" name="depts">
    <option value="IT"></option>
    <option value="Healthcare"></option>
    <option value="Mobile"></option></select>
    </div>
  </div>
  </div>

  <button id="submit" type="submit" class="btn btn-success">Submit</button>
  <button id="reset"  type="reset" class="btn btn-primary">Reset</button>
  <button id="addIdea"  type="button" class="btn btn-info">Add another Idea</button>
</form>
<script>
// Create an AUI instance and load the 'aui-node' module
YUI().use(
  'aui-node',
  function(Y) {
    var lastIdeaNumber = 1;
    var newIdeaNumber = 2;
    var job = '<div class="job added">' +
      '<h5>New Idea: </h5>' +
      '<label class="control-label" for="position2">Title: </label>' +
      '<input class="form-control" type="text" id="position2"><br>' +
      '<label class="control-label" for="desc">Description: </label>' +
      '<textarea class="form-control" id="desc"></textarea> <br>' +
      '<label class="control-label" for="dept">Department Name: </label>' +
      '<div class="controls">'+
      '<select id="dept" name="depts">'+
    '<option value="IT"></option>'+
    '<option value="Healthcare"></option>'+
    '<option value="Mobile"></option></select>'+
    '</div>'+'<br>'+
    '</div>;'

    Y.one('#addIdea').on(
      'click',
      function() {
        // Create a new Job node and give it an appropriate ID
        var newIdea = Y.Node.create(job);
        newIdea.attr('id', 'job' + newIdeaNumber);

        // Place the node in its spot in the DOM and populate it
        var lastIdea = '#job' + lastIdeaNumber;
        Y.one(lastIdea).placeAfter(newIdea);

        // Increment the values in case another job is added
        lastIdeaNumber++;
        newIdeaNumber++;
      }
    );

    Y.one('#reset').on(
      'click',
      function() {
        // Reset the original number of fields when "Reset" is pressed
        Y.all('#IdeaForm .added').remove(true);

        lastIdeaNumber = 1;
        newIdeaNumber = 2;
      }
    );
  }
);
</script>
</body>
</html>
