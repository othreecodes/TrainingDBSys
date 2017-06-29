<%@ include file="/common/taglibs.jsp"%>
<span iita:helptoc="users/index#quicksearch">

<div class="row">

<div class="col-xs-4">
<s:form method="get" action="users!search" namespace="/admin">
	<h4>Search:</h4> 
	<s:textfield name="filter" value="%{filter}" cssClass="form-control" />
	 <div class="col-xs-2 pull-left">
	  <s:checkbox name="extensiveSearch" value="%{extensiveSearch}" cssClass="form-control" label="LDAP?" />	
	</div> 
	
	<h4>LDAP?</h4>

	<div class="row">
	<div class="col-xs-4 pull-left">
		<s:submit value="Search" cssClass="btn btn-primary pull-left"/>
	</div> 
	</div>
	<br><br>
</s:form>
</div>
</div>


</span>
