<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<aui:form name="contacts_form" id="fm1" method="post">
	<aui:input name="name" value='' label="Your Name"></aui:input>
	<aui:input name="email" value='' label="Your email"></aui:input>
	<aui:input type="textarea" cols="70" rows="10" name="message" value='' label="Message"></aui:input>
	<aui:button type="submit" name="Submit" value="Submit" />
</aui:form>