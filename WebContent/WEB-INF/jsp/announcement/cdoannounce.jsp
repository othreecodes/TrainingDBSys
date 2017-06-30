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
<div class="button-bar">
	<security:authorize ifAnyGranted="ROLE_CRM">
		<a class="btn btn-primary"  href="<s:url action="new-announcement" />">Add Announcement</a> 
		&nbsp;
		</security:authorize>
		<a  class="btn btn-success" href="<s:url action="search-announcements" />">Search Announcements</a><br>
</div>

<s:include value="/WEB-INF/jsp/include/pagedcdo-announcementlisting.jsp" />

</body>
</html>