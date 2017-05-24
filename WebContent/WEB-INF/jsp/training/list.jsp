<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>List of trainees</title>
</head>
<body>

<s:include value="/WEB-INF/jsp/paging.jsp">
	<s:param name="page" value="paged.page" />
	<s:param name="pages" value="paged.pages" />
	<s:param name="pageSize" value="paged.pageSize" />
	<s:param name="href" value="%{''}" />
</s:include>
<div style="padding: 2px 2px 3px 5px; background-color: rgb(239, 239, 239);">
<s:form method="get" action="" namespace="/"><s:submit value="Export to Excel" /></s:form></div>

<s:if test="paged.pageSize > 0">
	<table class="data-listing">
		<colgroup>
			<col width="2%" />
			<col width="14%" />
			<col width="10%" />
			<col width="17%" />
			<col width="7%" />
			<col width="10%" />
			<col width="12%" />
			<col width="7%" />
			<col width="7%" />
			<col width="7%" />
			<col width="7%" />
		</colgroup>
		<thead>
			<tr>
				<td>#</td>
				<td>Title</td>
				<td>Name</td>
				<td>Email</td>
				<td>Gender</td>
				<td>Office Address</td>
				<td>Educational Info.</td>
				<td>Country</td>
				<td>Organization</td>
				<td>Phone</td>
				<td>Areas Of Interest</td>
			</tr>
		</thead>
		<s:iterator value="paged.results" status="status">
			<tr>
			
			
		<!--   -->				<td><s:property value="#status.count + paged.startAt" /></td>
		<!--  Title -->			<td><s:property value="title" /></td>
		<!--  Name -->			<td><a href="<s:url action="" />?id=<s:property value="id" />"><s:property value="person.fullName" /></a></td>
		<!--  Email -->			<td><s:property value="email" /></td>
		<!--  Gender -->		<td><s:property value="gender" /></td>
		<!--  Office -->		<td><s:property value="office" /> </td>
		<!--  Educational -->	<td><s:property value="educational" /></td>
		<!--  Country -->		<td><s:property value="country" /></td>
		<!--  Organization -->	<td><s:property value="organization" /></td>
		<!--  Phone-->			<td><s:property value="phone" /></td>
		<!--  Areas  -->		<td><s:property value="areas" /></td>
			</tr>
		</s:iterator>
	</table>
</s:if>
<s:else>
	<p>No records available.</p>
</s:else>




</body>
</html>