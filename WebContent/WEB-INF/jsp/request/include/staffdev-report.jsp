<%@ include file="/common/taglibs.jsp"%>

<s:if test="sd.taReport != null">
	<h2>Training Evaluation Report</h2>
	<s:form method="POST" action="postreport/form" cssClass="noprint">
		<s:hidden name="sdId" value="%{sd.id}" />
		<s:hidden name="id" value="%{sd.sdReport.id}" />
		<div style="margin: 10px 0px 0px 0px;" class="button-bar"><s:submit value="Edit Report" /></div>
	</s:form>
	<h3>Key contacts made/targets met</h3>
	<div style="margin-bottom: 20px;"><s:property value="sd.sdReport.keyContacts.replaceAll('\n', '<br />')" escape="false" /></div>
	<h3>Actual outcomes</h3>
	<div style="margin-bottom: 20px;"><s:property value="sd.sdReport.actualOutcomes.replaceAll('\n', '<br />')" escape="false" /></div>
	<h3>Actual value to IITA</h3>
	<div style="margin-bottom: 20px;"><s:property value="sd.sdReport.actualValue.replaceAll('\n', '<br />')" escape="false" /></div>
	<h3>Follow-up/further action to be taken</h3>
	<div style="margin-bottom: 20px;"><s:property value="sd.sdReport.followUp.replaceAll('\n', '<br />')" escape="false" /></div>
	<h3>Comments</h3>
	<div style="margin-bottom: 20px;"><s:property value="sd.sdReport.comment.replaceAll('\n', '<br />')" escape="false" /></div>
</s:if>