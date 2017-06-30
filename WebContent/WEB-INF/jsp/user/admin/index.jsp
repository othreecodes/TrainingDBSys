<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>Users</title>
</head>
<body>
<s:include value="include/search.jsp" />
<div class="space"></div>

<div class="panel-body">
		<div class="list-group">
				<a class="list-group-item" href="<s:url action="user/user!input" namespace="/admin" />">Add New User</a>
				<a class="list-group-item" href="<s:url action="users" namespace="/admin" />">List all users</a>
				<a class="list-group-item" href="<s:url action="user/roles" namespace="/admin" />">Roles</a>		
			</div ><! --list group -->
		<div class="hline"></div>
	</div><! --close panel body -->
	<div class="spacing"></div>
	
		<s:include value="include/userlist.jsp" />
	</body>
</html>