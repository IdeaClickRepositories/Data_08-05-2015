<!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>Example</title>

      <script src="/IdeaClick-portlet/docroot/js/aui-min.js"></script>
      <link href="/IdeaClick-portlet/docroot/css/bootstrap.min.css" rel="stylesheet"></link>
    </head>
    <body>
     <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-collapse">
      <ul class="nav navbar-nav">
        <li id="myDropdown" class="dropdown">
          <a id="myTrigger" href="#" class="dropdown-toggle">Dropdown <b class="caret"></b></a>
          <ul class="dropdown-menu" style="padding: 8px">
            I only close on escape
          </ul>
        </li>
      </ul>
    </div>
  </div>
      <script>
      YUI().use(
    		  'aui-dropdown',
    		  function(Y) {
    		    new Y.Dropdown(
    		      {
    		        boundingBox: '#myDropdown',
    		        trigger: '#myTrigger',
    		        hideOnClickOutSide: false,
    		        hideOnEsc: true,
    		        open: true
    		      }
    		    ).render();
    		  }
    		);
      </script>
    </body>
    </html>