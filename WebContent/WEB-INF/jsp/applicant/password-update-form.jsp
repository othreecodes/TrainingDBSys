<%@ include file="/common/taglibs.jsp"%>
<html lang="en">
<head>
    <title>Training Registration</title>
</head>
<body>
<p class="alert alert-warning text-center">Choose new password to use a custom password to login to this application.</p>
	<s:form action="password-update!updatePassword" method="post">
		<table class="table table-responsive">
		
			<tr>
				<td>Current Password:</td>
				<td><s:password name="oldPassword" cssClass="form-control" value="%{oldPassword}" /></td>
			</tr>
			
			<tr>
				<td>Password:</td>
				<td><s:password name="newPassword" cssClass="form-control" value="%{newPassword}" /></td>
			</tr>
			<tr>
				<td>Retype Password:</td>
				<td><s:password name="confirmPassword" cssClass="form-control" value="%{confirmPassword}" /></td>
			</tr>
			<tr>
				<td></td>
				<td><s:submit value="Update Password" cssClass="btn btn-primary btn-block" onclick="javascript: return confirm('Update password anyway?');" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>