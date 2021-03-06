<%@ include file="/common/taglibs.jsp"%>
<%-- <%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>

<html lang="en">
<head>
    <title>Training Registration</title>
</head>
<body>
<h2>Registration for: <s:property value="announcement.title" /> in <s:property value="announcement.type" /></h2>

<s:form id="processdata" action="process-register" method="post">
<s:hidden name="announcementId" value="%{announcement.id}" />
<s:hidden name="regOption" value="%{regOption}" />
<s:hidden name="refNumber" value="%{refNumber}" />
<s:if test="cdoApplication!=null">
	<s:hidden name="applicationId" value="%{cdoApplication.id}" />
</s:if>
<div><em>* <font style="color:#ff0000">means mandatory fields</font></em></div>
<div id="accordion">

<s:if test="cdoBioData==null && (regOption=='New' || regOption=='Edit')">
	<s:include value="/WEB-INF/jsp/include/degrees/biodata-form.jsp" />
</s:if>
<s:else>
	<s:include value="/WEB-INF/jsp/include/degrees/biodata-exist-form.jsp" />
</s:else>

<s:include value="/WEB-INF/jsp/include/degrees/spokenlanguages-form.jsp" />

<s:include value="/WEB-INF/jsp/include/degrees/children-form.jsp" />

<s:include value="/WEB-INF/jsp/include/degrees/nextofkin-form.jsp" />

<s:include value="/WEB-INF/jsp/include/degrees/educationandtraining-form.jsp" />

<s:include value="/WEB-INF/jsp/include/degrees/employmenthistory-form.jsp" />

<s:include value="/WEB-INF/jsp/include/degrees/research-form.jsp" />

<s:include value="/WEB-INF/jsp/include/degrees/cdoreg-related-form.jsp" />

</div> 

<table class="inputform">
    <colgroup>
			<col width="200px" />
			<col />
		</colgroup>
        <tr>
            <td></td>
            <td><s:submit action="process-draft" value="Save Draft & Continue" /> <s:submit value="Submit Form" onclick="if(confirm('Submit your form anyway?')){return true;}else{return false;}" /></td>
        </tr>
    </table>
</s:form>
</body>
</html>