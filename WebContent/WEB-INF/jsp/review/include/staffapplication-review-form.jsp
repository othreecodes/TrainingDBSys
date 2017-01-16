<%@ include file="/common/taglibs.jsp"%>

<div class="actionMessage">
<h2>Waiting for your approval as <s:property value="stageAction" /></h2>
<s:form action="<s:property value="#stageAction" />" method="POST">
	<table class="inputform">
		<colgroup>
			<col />
			<col width="25%" />
		</colgroup>
		<tbody>
			<tr>
				<td><s:textarea name="comment" value="%{comment}" /></td>
				<td><s:hidden name="approvalStatus" /><s:submit value="APPROVE" onclick="return actionApproveBtn();" /><br />
				<s:submit value="REJECT" action="<s:property value="#stageAction" />" onclick="return actionRejectBtn();" /></td>
			</tr>
		</tbody>
	</table>
</s:form>
</div>
<script type="text/javascript" language="javascript">
	function actionApproveBtn(){
		document.getElementByName("approvalStatus").value="Approved";
		return true;
	}
	function actionRejectBtn(){
		document.getElementByName("approvalStatus").value="Rejected";
		return true;
	}
</script>