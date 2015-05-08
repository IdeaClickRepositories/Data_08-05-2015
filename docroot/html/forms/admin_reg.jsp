<%@ include file="init.jsp"%>
<h1>Admin Registration Form</h1>
<aui:form name="fm3" id="fm3" action="" method="post">
	<aui:input name="adminId" value='' label="Admin Id"></aui:input>
	<aui:input name="orgId" value='' label="Organization Id"></aui:input>
	<aui:input name="email" value='' label="Email"></aui:input>
	<aui:input name="password1" id="password1" value='' label="Password" type="password"></aui:input>
	<aui:input name="password2" value='' label="Re Type Password" type="password"></aui:input>
	<aui:input name="deptId" value='' label="Department Id"></aui:input>
	<aui:input name="phoneNumber" value='' label="Phone Number"></aui:input>
	<aui:button type="submit" name="numberSearch" value="Save" />
</aui:form>
<aui:script>
AUI().use('aui-form-validator',
  function(A) {
  var DEFAULTS_FORM_VALIDATOR = A.config.FormValidator;
 		 A.mix(
  			DEFAULTS_FORM_VALIDATOR.RULES,
			{
				customRuleForAge:function (val, fieldNode, ruleValue) {
										var result = false;
										if (val >=18) {
										result = true;
										}
										return result;
										},
			},
			true
		);
 		 A.mix(
			DEFAULTS_FORM_VALIDATOR.STRINGS,
			{
				customRuleForAge:"Age Should Be more than 18",
			},
			true
		);
    var rules = {
    	<portlet:namespace/>adminId: {
        required: true,
        alphanum:true
      },
      <portlet:namespace/>orgId: {
        required: true,
        alphanum:true
      },
      <portlet:namespace/>deptId: {
          required: true,
          alphanum:true
        },
      <portlet:namespace/>lastName: {
        alpha:true
      },
      <portlet:namespace/>email: {
        email: true,
        required: true
      },
      <portlet:namespace/>phoneNumber: {
        required: true,
        digits: true,
        rangeLength:[8, 10]
      },
      <portlet:namespace/>password1: {
        required: true
      },
      <portlet:namespace/>password2: {
        equalTo: '#<portlet:namespace/>password1',
        required: true
      }
    };

    var fieldStrings = {
      <portlet:namespace/>email: {
        required: 'Type your email in this field.'
      },
      <portlet:namespace/>name: {
        required: 'Please provide your name.'
      }
    };
    new A.FormValidator(
      {
        boundingBox: '#<portlet:namespace/>fm3',
        fieldStrings: fieldStrings,
        rules: rules,
        showAllMessages: true
      }
    );
  }
);
</aui:script>