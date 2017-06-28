<%@ include file="/common/taglibs.jsp"%>

<s:form action="add-funder" method="post">
	<s:if test="top instanceof org.iita.trainingunit.model.Trainee && id!=null">
		<s:hidden name="traineeId" value="%{id}" />
	</s:if>
	<s:elseif test="top instanceof org.iita.trainingunit.model.TrainingProgram && id!=null">
		<s:hidden name="programId" value="%{id}" />
	</s:elseif>
	<table class="inputform">
		<colgroup>
			<col width="20%" />
			<col />
		</colgroup>
		<tr>
			<td>Sponsor/Project:</td>
			<td><s:url namespace="/ajax" action="public-ajax" id="xx" /> <iita:autocompleter cssClass="organization form-control" name="organizationId" id="tra.organizationId" listKey="id"
				listValue="title" url="%{xx}" method="autocompleteOrganization" submitTextTo="organizationName" /></td>
		</tr>
		<tr>
			<td>Sponsor type:</td>
			<td><s:select name="sponsorType" cssClass="form-control" list="@org.iita.trainingunit.model.Funding$SponsorType@values()" /></td>
		</tr>
		<tr>
			<td>Cost Center:</td>
			<td><s:textfield name="costCenter" cssClass="form-control" /></td>
		</tr>
		<tr>
			<td>Estimated Cost (USD):</td>
			<td><s:textfield name="estimatedCost" cssClass="form-control" /></td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit value="Register funding" cssClass="btn btn-success btn-block" /></td>
		</tr>
	</table>
</s:form>