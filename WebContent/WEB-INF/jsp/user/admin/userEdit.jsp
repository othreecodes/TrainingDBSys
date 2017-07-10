<%@ include file="/common/taglibs.jsp"%>

<s:if test="user==null || user.id == null">
	<s:set name="title" value="%{'Add new user'}" />
</s:if>
<s:else>
	<s:set name="title" value="%{'Update user'}" />
</s:else>

<html>
<head>
<title><s:property value="#title" /></title>
</head>
<body>

<s:form action="userSave" method="post">
	<s:hidden name="id" value="%{user.id}" />
	<s:hidden name="user.id" value="%{user.id}" />


<div class="row">
		<div class="col-xs-12z col-md-3">
		<s:submit cssClass="btn btn-primary btn-md btn-block" value="Update" action="userSave!update" /><br>
		
	
		<s:if test="user.id!=null">
			<input class="btn btn-primary btn-md btn-block" type="button" value="Impersonate" onClick="javascript: window.location='<s:url action='user/user!switchto' />?id=<s:property value="user.id" />';" />
			<br>
			<input class="btn btn-primary btn-md btn-block"  type="button" value="Change password" onClick="javascript: window.location='<s:url namespace="/admin" action="user/password?id=%{user.id}" />';" />
		</s:if>
	<br>
	<s:submit cssClass="btn btn-success btn-md btn-block" value="Submit & Close" /><br>
		<s:submit cssClass="btn btn-danger btn-md btn-block" value="Cancel" name="redirect-action:users" /><br>
		</div>
	<br>
	<!-- don't forget validation -->
	
	<div class="col-xs-12 col-md-6">
	<table class="table table-responsive" iita:helptoc="users/user">
		<colgroup>
			<col width="180" />
			<col />
		</colgroup>
		<tr>
			<td class="tdLabel"><label>User Name:</label></td>
			<td><s:textfield name="user.userName" value="%{user.userName}" cssClass="form-control" label="User name" /></td>
		</tr>
		<tr>
			<td class="tdLabel"><label>Login type:</label></td>
			<td><s:property value="user.authenticationType" /></td>
		</tr>
		<tr>
			<td class="tdLabel"><label>State:</label></td>
			<td><s:select name="user.status" value="%{user.status}" cssClass="form-control" list="#{'DISABLED':'Disabled', 'ENABLED':'Active', 'DELETED':'Deleted'}" /></td>
		</tr>		
		<tr>
			<td class="tdLabel"><label>First name:</label></td>
			<td><s:textfield name="user.firstName" value="%{user.firstName}" cssClass="form-control" label="User first name" /></td>
		</tr>

		<tr>
			<td class="tdLabel"><label>Last name:</label></td>
			<td><s:textfield name="user.lastName" value="%{user.lastName}" cssClass="form-control" label="User last name" /></td>
		</tr>


		<tr>
			<td class="tdLabel"><label>Display name:</label></td>
			<td><s:textfield name="user.displayName" value="%{user.displayName}"  cssClass="form-control" label="User display name" /></td>
		</tr>

		<tr>
			<td class="tdLabel"><label>Email:</label></td>
			<td><s:textfield name="user.mail" value="%{user.mail}" label="User mail" cssClass="form-control"/></td>
		</tr>
		
		<tr>
			<td class="tdLabel"><label>Staff ID:</label></td>
			<td><s:textfield name="user.staffId" value="%{user.staffId}" label="Staff ID" cssClass="form-control"/></td>
		</tr>

		<tr>
			<td class="tdLabel"><label>Description:</label></td>
			<td><s:textarea name="user.description" value="%{user.description}" label="User description" cssClass="form-control" /></td>
		</tr>

		<tr>
			<td class="tdLabel"><label>Department:</label></td>
			<td><s:textfield name="user.department" value="%{user.department}" label="User department" cssClass="form-control"/></td>
		</tr>

		<tr>
			<td class="tdLabel"><label>Last login:</label></td>
			<td><iita:date name="user.lastLogin" format="%{getText('date.format')} HH:mm:ss" /></td>
		</tr>

		<tr>
			<td class="tdLabel"><label>Last login failed:</label></td>
			<td><iita:date name="user.lastLoginFailed" format="%{getText('date.format')} HH:mm:ss" /></td>
		</tr>
	</table>
	</div><!-- close div -->

	
	


</div>
	


	<h2>Role</h2>
	<s:include value="include/role.jsp" />
	
	<h2>Tag based access</h2>
	<s:include value="include/tagaccess.jsp" />


	<h2>Lookup</h2>
	<s:include value="include/lookup.jsp" />
</s:form>
</body>
</html>