<%@ include file="/common/taglibs.jsp"%>
<%-- <%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>

<html lang="en">
<head>
    <title>Staff Training Application Form</title>
    <style type="text/css">
		.singleColumn{ padding-left: 5px; font-weight:normal;}
		.lr{float:left; width:100%}
	</style>
</head>
<body>
	<div class="container-fluid">
		<s:include value="evaluation-form.jsp" />
		
		<s:include value="/WEB-INF/jsp/request/include/staffapplication-head.jsp" />

		<s:include value="/WEB-INF/jsp/include/staffapplication-actionlog.jsp" />
	</div>
</body>
</html>