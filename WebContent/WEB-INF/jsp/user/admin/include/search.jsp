<%@ include file="/common/taglibs.jsp"%>
<span iita:helptoc="users/index#quicksearch">

<s:form method="get" action="users!search" namespace="/admin">
<table >
	<thead>
		<tr>
			<td><label>Search:</label></td>
		</tr>
	</thead>
	<tr>
		<td><s:textfield name="user.accessTags" value="%{top}"  cssClass="form-control"/></td>
	</tr>
	<tr>
		<td><label>LDAP?</label><s:checkbox name="extensiveSearch" value="%{extensiveSearch}" cssClass="form-control" label="LDAP?" /></td>
	</tr>
	
 <tr>
		<td><br><s:submit value="Search" cssClass="btn btn-primary btn-block"/></td>
	</tr>

</table>
</s:form>



</span>
