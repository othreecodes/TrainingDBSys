<%@ include file="/common/taglibs.jsp"%>

<s:form action="add-trainee" method="post">
	<s:if test="top instanceof org.iita.crm.model.Person && id!=null">
		<s:hidden name="personId" value="%{id}" />
	</s:if>
	 
		<s:if test="!(top instanceof org.iita.crm.model.Person && id!=null)">
			 
				<label>Person:</label>
				<s:url namespace="/ajax" action="public-ajax" id="xx" /> 
				<iita:autocompleter cssClass="person form-control" name="personId" id="trainee.personId" listKey="id"
					listValue="fullName" url="%{xx}" method="autocompletePerson" submitTextTo="personName" />
		 
		</s:if>
		 
			<label>Research Topic:</label>
			 <s:textfield name="researchTopic" cssClass="form-control" /> 
		 
			<label>Start date:</label>
			<iita:datepicker name="startDate" cssClass="form-control" format="dd/MM/yyyy" />
	 
			<label>End date:</label>
			<iita:datepicker name="endDate" cssClass="form-control"  format="dd/MM/yyyy" /> 
		 
			 <br>
			 <s:submit value="Register trainee"  cssClass="btn btn-success"/> 
	 	 <br>
</s:form>