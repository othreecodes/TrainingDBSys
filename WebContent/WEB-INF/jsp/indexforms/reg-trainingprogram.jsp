<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>Dashboard: Training Program registration</title>
</head>
<body >


<div class="con">

<div class="col-md-8">
		<div class="alert alert-info">Before registering new training
			program, please check if the record about the training program
			already exists by searching for any related information.</div>
		<security:authorize
			ifAnyGranted="ROLE_USER, ROLE_HEAD, ROLE_ADMIN, ROLE_QUERYMANAGER">
			<h2 class="page-header">Register new training</h2>
			<s:include value="/WEB-INF/jsp/program/quickform.jsp" />
		</security:authorize>
		<security:authorize
			ifNotGranted="ROLE_USER, ROLE_HEAD, ROLE_ADMIN, ROLE_QUERYMANAGER">
			<em>No access granted to use this page!</em>
		</security:authorize>
	</div>

	<div class="col-md-4">
		<s:if test="programs!=null && programs.size>0">
			<div class="panel panel-default">
				<div class="panel-heading">Last updated programs</div>
				<div class="panel-body">
					<ul class="list-group">
						<s:iterator value="programs">
							<li class="list-group-item"><s:include
									value="/WEB-INF/jsp/program/short.jsp" /></li>
						</s:iterator>
					</ul>

				</div>
			</div>


		</s:if>

	</div>

</div>

	

</body>
</html>