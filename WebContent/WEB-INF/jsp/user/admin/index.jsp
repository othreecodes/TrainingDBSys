<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>Users</title>
</head>
<body>

<div class="row">

<div class="col-md-6">
<s:include value="include/search.jsp" />
</div>
<div  class="col-md-6">
<div class="panel-body">
		<div class="list-group">
				<a class="list-group-item" href="<s:url action="user/user!input" namespace="/admin" />">Add New User</a>
				<a class="list-group-item" href="<s:url action="users" namespace="/admin" />">List all users</a>
				<a class="list-group-item" href="<s:url action="user/roles" namespace="/admin" />">Roles</a>		
			</div ><! --list group -->		
	</div><! --close panel body -->
</div>


</div>	

	<div class="hline"></div>
	
		<s:include value="include/userlist.jsp" />
	
	</body>
</html>