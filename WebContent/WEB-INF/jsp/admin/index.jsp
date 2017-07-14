<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>Administrator Dashboard</title>
</head>
<body>
	<h2>Tools</h2>


	<div class="panel-body">
		<div class="list-group">
				<a class="list-group-item"  href="<s:url action="schedule/index" />">Scheduled jobs</a>
				<a class="list-group-item"  href="<s:url action="lucene/reindex" />">Lucene reindex</a>		
				<a class="list-group-item"  href="<s:url action="applock" />">Block access to application</a>		
				<a class="list-group-item"  href="<s:url action="java-status" />">JRE status</a>		
			</div ><! --list group -->
						<div class="hline"></div>
	</div><! --close panel body -->
	<div class="spacing"></div>

	<h2>Session</h2>
	<div class="alert alert-info">
	<p>
		Session timeout: <b>${pageContext.session.maxInactiveInterval}
			seconds</b>
	</p>
</div>
<div class="spacing"></div>
	<h2>Server locale and time zone settings</h2>
	
	<div class="alert alert-info">
	<p>
		Timezone: <b><s:property value="@java.util.TimeZone@getDefault()" /></b>
	</p>
	</div>
	
	<div class="spacing"></div>
	
	<h2>User locale and time zone</h2>	<div class="alert alert-info">
	<p>
		Locale: <b><s:property value="getLocale()" /></b>
	</p>
</div>
	


</body>
</html>