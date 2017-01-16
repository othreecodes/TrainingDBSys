<%@ include file="/common/taglibs.jsp"%>
<h3>Application Status: <em><s:text name="staffdev.approvalStatus.%{sd.approvalStatus}" /></em></h3>
	
	<s:include value="/WEB-INF/jsp/include/staffapplication-actionlog.jsp" />
	
    <s:if test="sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@SUPERVISOR">
		<s:include value="/WEB-INF/jsp/staff/supervisor-form.jsp" />
	</s:if>
	<s:elseif test="sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@WAITINGFORCDO">
		<s:set name="stageAction" value="%{'Head CDO'}" />
		<s:include value="staffapplication-cdoreview-form.jsp" />
	</s:elseif>
	<s:elseif test="sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@WAITINGFORHOD">
		<s:set name="stageAction" value="%{'Head of Unit'}" />
		<s:include value="staffapplication-hodreview-form.jsp" />
	</s:elseif>
	<s:elseif test="sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@WAITINGFORCOMMITTEE">
		<s:set name="stageAction" value="%{'Committee Representative'}" />
		<s:include value="staffapplication-cmtreview-form.jsp" />
	</s:elseif>
	<s:elseif test="sd.approvalStatus==@org.iita.trainingunit.staff.model.StaffDevelopment$APPROVALSTATUS@WAITINGFORDDGPCD">
		<s:set name="stageAction" value="%{'DDG PCD'}" />
		<s:include value="staffapplication-ddgreview-form.jsp" />
	</s:elseif>
	
<s:include value="/WEB-INF/jsp/request/include/staffapplication-head.jsp" />

