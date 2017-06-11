<%@ include file="/common/taglibs.jsp"%>

<s:form action="add-program" method="post">
	<table class="inputform">
		<colgroup>
			 
		</colgroup>
		<tr>
			<td>Title:</td>
			<td><s:textfield cssClass="form-control" name="title" value="" /></td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit value="Register training" cssClass="btn btn-success" /></td>
		</tr>
		
	</table>
</s:form>