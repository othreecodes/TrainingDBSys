<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CDO Training Announcements</title>
</head>
<body>

<s:include value="/WEB-INF/jsp/paging.jsp">
	<s:param name="page" value="paged.page" />
	<s:param name="pages" value="paged.pages" />
	<s:param name="pageSize" value="paged.pageSize" />
	<s:param name="href" value="%{''}" />
</s:include>
<div class="btn-group" role="group">
	<security:authorize ifAnyGranted="ROLE_CRM">
		<a href="<s:url action="new-announcement" />" class="btn btn-default">Add Announcement</a> &nbsp;</security:authorize><a class="btn btn-default" href="<s:url action="search-announcements" />">Search Announcements</a>
</div>
<s:include value="/WEB-INF/jsp/include/pagedcdo-announcementlisting.jsp" />

</body>
</html>