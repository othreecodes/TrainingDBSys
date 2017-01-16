<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<title>Staff Training Applications list</title>
</head>
<body>
<div class="pull-right">
<s:form method="post" name="staffForm" namespace="/staff" action="apply">
	<s:submit value="Apply Now!" cssClass="btn btn-success" />
</s:form>
</div>
<hr />
<s:if test="paged.totalHits>0">
	<s:include value="/WEB-INF/jsp/paging.jsp">
		<s:param name="page" value="paged.page" />
		<s:param name="pages" value="paged.pages" />
		<s:param name="pageSize" value="paged.pageSize" />
		<s:param name="href" value="%{''}" />
	</s:include>
</s:if>

<s:include value="/WEB-INF/jsp/staff/staff-table-listing-full.jsp" />
</body>
</html>