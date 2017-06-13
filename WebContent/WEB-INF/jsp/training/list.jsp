
<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>List of trainees</title>
<link
	href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"
	rel="stylesheet" type="" text/css"/>


</head>

<body>



	<div class="container">
		<%-- <div
		style="padding: 2px 2px 3px 5px; background-color: rgb(239, 239, 239);">
		<s:form method="get" action="" namespace="/">
			<s:submit value="Export to Excel" />
		</s:form>
	</div> --%>

		<s:include value="/WEB-INF/jsp/paging.jsp">
			<s:param name="page" value="paged.page" />
			<s:param name="pages" value="paged.pages" />
			<s:param name="pageSize" value="paged.pageSize" />
			<s:param name="href" value="%{''}" />
		</s:include>



		<s:if test="paged.pageSize > 0">
			
			<table id="example"
			class="table table-striped table-bordered table-responsive"
			cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Title</th>
					<th>Name</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Job Title</th>
					<th>Organization</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>#</th>
					<th>Title</th>
					<th>Name</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Job Title</th>
					<th>Organization</th>
				</tr>
			</tfoot>
			<tbody>
			<s:iterator value="paged.results" status="status">
				<tr>
					<td><s:property value="#status.count + paged.startAt" /></td>
					<td><s:property value="title" /></td>
					<td><s:property value="fullName" /></td>
					<td><s:property value="phone" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="jobTitle" /></td>
					<td><s:property value="organization" /></td>
				</tr>
				</s:iterator>
			</tbody>
		</table>
		</s:if>
		<s:else>
			<p>No records available.</p>
		</s:else>

		
	</div>
</body>

</html>