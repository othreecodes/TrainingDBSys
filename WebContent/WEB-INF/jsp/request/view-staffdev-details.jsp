<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<title>Staff Training and Development application details</title>
</head>
<body>
<s:if test="sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@APPROVED || sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@REPORTFILED">
 <security:authorize ifAnyGranted="ROLE_DDGPCD,ROLE_TRAININGUNITHEAD">
 <div class="button-bar">
	<s:form method="POST" action="cancel-staffdev" cssClass="noprint">
		<s:hidden name="id" value="%{sd.id}"></s:hidden>
			<s:submit value="Cancel application request" />
	</s:form>
	
	<s:form method="POST" action="edit-staffdev" cssClass="noprint">
	<s:hidden name="id" value="%{sd.id}"></s:hidden>
		<s:submit value="Edit application request" />
</s:form>
 </div>
 </security:authorize>
 </s:if>
<s:include value="/WEB-INF/jsp/request/include/staffdev-view.jsp" />
</body>
</html>