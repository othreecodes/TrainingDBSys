<%@ include file="/common/taglibs.jsp"%>
<span iita:helptoc="users/index#quicksearch">

<s:form method="get" action="users!search" namespace="/admin">

<div class="row">
<div class= "col-xs-10">
<label for="user.accessTags" class=""><strong> Search: <font style="color: #ff0000">*</font></strong></label>
<s:textfield name="user.accessTags" value="%{top}"  cssClass="form-control"/>
</div>

<div class= "col-xs-2">
<label for="extensiveSearch" class=""><strong>LDAP? <font style="color: #ff0000">*</font></strong></label>
<s:checkbox name="extensiveSearch" value="%{extensiveSearch}" cssClass="form-control pull-left" label="LDAP?" />
</div>
<div class= "col-xs-12 center">
<s:submit value="Search" cssClass="btn btn-primary btn-block"/></td></div>
</div>



</s:form>



</span>
