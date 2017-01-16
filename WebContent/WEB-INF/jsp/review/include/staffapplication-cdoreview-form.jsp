<%@ include file="/common/taglibs.jsp"%>

<div class="actionMessage">
<h2>Waiting for your approval as <s:property value="stageAction" /></h2>
<s:form action="cdo" method="POST">
<s:set name="staffDev" value="%{sd}" />
			<s:if test="sd!=null">
				<s:hidden name="id" value="%{staffDev.id}" />
			</s:if>
	<table class="inputform">
		<colgroup>
			<col />
			<col width="25%" />
		</colgroup>
		<tbody>
			<tr>
				<td><s:textarea name="comment" value="%{comment}" /></td>
				<td><s:hidden name="approvalStatus" /><s:submit value="APPROVE" onclick="return actionApproveBtn();" /><br />
				<s:submit value="REJECT" action="cdo!rejectCDOHead" onclick="return actionRejectBtn();" /></td>
			</tr>
		</tbody>
	</table>
</s:form>
</div>
<script type="text/javascript" language="javascript" src="/training/script/staffapprovalform.js"></script>