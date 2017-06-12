<%@ page session="false"%>
<%@ include file="/common/taglibs.jsp"%>


		
		<h1 class="centered">
		<fmt:message key="webapp.name" />
		</h1>		<div class="hline"></div>
		<div class="container-fluid centered">
		<br><br>
		
		
		<s:include value="login-form.jsp" />
		
		
		
		<p class="alert alert-warning"><b>Note:</b> Use your Domain Network account to log in.</p>
		
		<p class="smallpadding">Don't want to use your domain password or domain password does not
			work? You can <a href="<s:url action="remind/password" />">generate
				a password</a> to use only with this application.
		</p>
		<p>
			Contact <a href="mailto:software@iita.org"
				title="IITA Software Development Service">software@iita.org</a> for
			help.
		</p>


		<c:if test="${not empty param.login_error}">
			<div id="errorMessages">
				<span class="errorMessage">Invalid user name or password!</span>
			</div>
		</c:if>

	</div>
	
	
	<script type="text/javascript">
	$('j_username').focus();
</script>
