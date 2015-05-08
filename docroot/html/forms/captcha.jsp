<!-- This URL will be invoked before showing the CAPTCHA image -->
<portlet:resourceURL var="captchaURL"/>
 
<!-- This URL validate the CAPTCHA data entered by user -->
<portlet:actionURL  var="validateURL" name="validateCaptcha"/>
 
<liferay-ui:error key="errorMessage" message="Enter correct data as shown in the image"/>
 
<aui:form action="${validateURL}" method="post" name="fm">  
 
<aui:input name="mobileNumber" label="Mobile Number" value=""/>
<aui:input  name="email" label="Email" value=""/>
 
<liferay-ui:captcha url="${captchaURL}" />
 
<aui:button-row>
    <aui:button type="submit" />
</aui:button-row>
 
</aui:form>