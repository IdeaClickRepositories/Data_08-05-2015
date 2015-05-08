<%
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

This is the <b>IdeaClick</b> portlet.

<!DOCTYPE html>
<html>
    <head>
        <title> My first increment </title>
    </head>
    <body>

        <input type="text" style="border:none; backgroung-color:"  readonly="readonly" name="TextBox" id="TextBox" value="0"/>
        <input type="Button" class="like-btn" id='AddButton' value="+" />

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
    </body>
</html>