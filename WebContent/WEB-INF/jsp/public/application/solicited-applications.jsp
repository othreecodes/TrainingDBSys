<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<title>Training Announcements</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12 col-md-6 col-md-6">
			<div class="panel panel-blue margin-bottom-40">
				<div class="panel-heading">
					<h2 class="panel-title"><strong><i class="fa fa-tasks">Training/Scholarship Announcements</i></strong></h2>
				</div>	
			</div>
			<s:if test="nonDegrees.size()>0 || graduates.size()>0 || groups.size()>0 || others.size()>0">
				<div class="col-xs-12 col-md-12 col-lg-12 alert alert-danger classWithPad">
					<s:include value="/WEB-INF/jsp/include/public-announcementlisting.jsp" />
				</div>
			</s:if>
			<s:else>
				<p>No announcements found. Please check later.</p>
			</s:else>
		</div>
	</div>
</div>
</body>
</html>