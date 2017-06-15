<%@ include file="/common/taglibs.jsp"%>


  <div class="navbar navbar-default" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
         <a class="navbar-brand" href="<s:url action="index" namespace="/" />" title="Go to dashboard of <fmt:message key="webapp.name" />">
		<img src="<c:url value='/img/logo.gif'/>" alt="IITA"
			style="float: left;
			padding-top:-20px; " /></a>
          
        </div>

 <div class="navbar-collapse collapse navbar-right">
          <ul class="nav navbar-nav">
		<li><a style="margin-right: 10px;" href="<c:url value="/" />"><span>Public site</span></a></li>
		
		<!-- Standard -->
		<li  class="dropdown">
	 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage <b class="caret"></b></a>
				<ul class="dropdown-menu">
				<li><a style="margin-right: 10px;" href="<s:url namespace="/admin" action="users" />"><span>Users</span></a></li>
				<li><a style="margin-right: 10px;" href="<s:url namespace="/admin" action="browse" />"><span>Browse</span></a></li>
				<li><a style="margin-right: 10px;" href="<s:url namespace="/admin" action="log" />"><span>Log</span></a></li>
				<li><a style="margin-right: 10px;" href="<s:url namespace="/admin" action="schema" />"><span>Schema</span></a></li>
				<li><a style="margin-right: 10px;" href="<s:url namespace="/admin" action="template/index" />"><span>Templates</span></a></li>
				<li><a style="margin-right: 10px;" href="<s:url namespace="/admin" action="undelete" />"><span>Undelete</span></a></li>
			</ul>
		</li>
	<li  class="dropdown">
	 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tools <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="<s:url action="schedule/index" />"><span>Scheduled jobs</span></a></li>
				<li><a href="<s:url action="lucene/reindex" />"><span>Lucene reindex</span></a></li>
				<li><a href="<s:url action="applock" />"><span>Block access to application</span></a></li>
				<li><a href="<s:url action="java-status" />"><span>JRE status</span></a></li>
			</ul>
		</li>
		<!-- Uncomment when help is ready -->
		<li><a style="margin-right: 10px;" onclick="javascript: return IITAHELP.helpFrame();" title="Help!"><span>Help</span></a></li>
		<security:authorize ifAnyGranted="ROLE_USER">
			<li><a style="margin-right: 10px;" href="<c:url value='/j_spring_security_logout' />" title="Log out"><span>Log out</span></a></li>
		</security:authorize>
	</ul>
  </div><!--/.nav-collapse -->
        
      </div>
    </div>
