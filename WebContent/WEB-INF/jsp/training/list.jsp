
<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>List of trainees</title>
<link
	href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"
	rel="stylesheet" type="" text/css"/>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js">
	
</script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js">
	
</script>
	<script type="text/javascript" class="init">
	
$(document).ready(function() {
	$('#example').DataTable();
} );

	</script>
</head>
<body>

	<%-- <s:include value="/WEB-INF/jsp/paging.jsp">
	<s:param name="page" value="paged.page" />
	<s:param name="pages" value="paged.pages" />
	<s:param name="pageSize" value="paged.pageSize" />
	<s:param name="href" value="%{''}" />
</s:include> --%>
	<div
		style="padding: 2px 2px 3px 5px; background-color: rgb(239, 239, 239);">
		<s:form method="get" action="" namespace="/">
			<s:submit value="Export to Excel" />
		</s:form>
	</div>

	<%-- <s:if test="paged.pageSize > 0">
 
</s:if>
<s:else>
	<p>No records available.</p>
</s:else> --%>
	<table id="example" class="table table-striped table-bordered"
		cellspacing="0" width="100%">
		<thead>
			<tr>
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
				<th>Title</th>
				<th>Name</th>
				<th>Phone Number</th>
				<th>Email</th>
				<th>Job Title</th>
				<th>Organization</th>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<td>Tiger Nixon</td>
				<td>System Architect</td>
				<td>Edinburgh</td>
				<td>61</td>
				<td>2011/04/25</td>
				<td>$320,800</td>
			</tr>
			<tr>
				<td>Garrett Winters</td>
				<td>Accountant</td>
				<td>Tokyo</td>
				<td>63</td>
				<td>2011/07/25</td>
				<td>$170,750</td>
			</tr>
		</tbody>
	</table>


</body>
</html>