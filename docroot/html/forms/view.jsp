<%@ include file="init.jsp"%>
<portlet:renderURL var="LoginURL">
<portlet:param name="mvcPath" value="/html/forms/login1.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="CapchaSubmitURL">
<portlet:param name="mvcPath" value="/html/forms/simplecaptcha.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="OrgRegURL">
<portlet:param name="mvcPath" value="/html/forms/org_reg.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="AdminRegURL">
<portlet:param name="mvcPath" value="/html/forms/admin_reg.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="UserRegURL">
<portlet:param name="mvcPath" value="/html/forms/user_reg.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="campaignURL">
<portlet:param name="mvcPath" value="/html/forms/campaign.jsp"/>
</portlet:renderURL>
<portlet:renderURL var="ideaURL">
<portlet:param name="mvcPath" value="/html/forms/ideas.jsp"/>
</portlet:renderURL>
<br/>
<aui:a href="<%=LoginURL%>" label="Login here"></aui:a><br/>
<aui:a href="<%=CapchaSubmitURL%>" label="Captcha"></aui:a><br/>
<aui:a href="<%=OrgRegURL%>" label="Organization Registration"></aui:a><br/>
<aui:a href="<%=AdminRegURL%>" label="Admin Registration"></aui:a><br/>
<aui:a href="<%=UserRegURL%>" label="User Registration"></aui:a><br/>
<aui:a href="<%=campaignURL%>" label="Create Campaign"></aui:a><br/>
<aui:a href="<%=ideaURL%>" label="Idea page"></aui:a><br/>