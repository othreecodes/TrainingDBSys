<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<title>CDO Trainings</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12 col-md-6 col-md-6">
			<s:form method="post" namespace="/application" action="register">
				<!-- Form Name -->
				<div class="panel panel-blue margin-bottom-40">
					<div class="panel-heading">
						<h2 class="panel-title"><strong><i class="fa fa-tasks">Non-Staff: Unsolicited Training Application</i></strong></h2>
					</div>	
				</div>
				<div class="panel-body">
					<!-- Select Basic -->
					<div class="row">
						<div class="col-xs-12 col-md-12 col-lg-12">
						  	<label class="col-xs-12" for="trainingOption">Select Type:</label>
						    <s:select name="trainingOption" emptyOption="true" cssClass="form-control" 
							list="#{ 'Graduate' : 'Graduate Trainee', 'Group':'Group', 'Internship':'Internship', 'Sabbatical':'Sabbatical' }" />
						</div>
					</div>
					<!-- Button -->
					<div class="row">
						<div class="col-xs-12 col-md-12 col-lg-12">
							<label class="col-xs-3">&nbsp;</label>
							<div class="col-xs-12 col-md-12 col-lg-12">
								<button type="submit" id="singlebutton" name="singlebutton" class="btn btn-info">Start Application</button>
							</div>
						</div>
					</div>
				</div>	
			</s:form>
			<div class="panel panel-blue margin-bottom-40">
				<div class="panel-heading">
					<h2 class="panel-title"><strong><i class="fa fa-tasks">Non-Staff: Solicited Training Application</i></strong></h2>
				</div>	
			</div>
			<s:if test="nonDegrees.size()>0 || graduates.size()>0 || groups.size()>0 || others.size()>0">
				<div class="col-xs-12 col-md-12 col-lg-12 alert alert-danger classWithPad">
					<s:include value="/WEB-INF/jsp/include/public-announcementlisting.jsp" />
				</div>
			</s:if>
			<s:else>
				<p>No solicited announcements found. Please check later.</p>
			</s:else>
		</div>
		
		<div class="col-xs-12 col-md-5 col-lg-5 pull-right">
			<div class="panel panel-blue margin-bottom-40">
					<div class="panel-heading">
						<h2 class="panel-title"><strong><i class="fa fa-tasks">IITA Staff/Registered Applicant</i></strong></h2>
					</div>	
				</div>
				<div class="panel-body">
					<p><b>Note:</b> Use your Domain Network account to log in.</p>
					<s:form namespace="/" action="/j_spring_security_check" method="post">
						<table class="inputform">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<tbody>
								<tr>
									<td>Username:</td>
									<td><s:textfield name="j_username" label="User" id="j_username" value="%{#request.appUser}" /></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><s:password name="j_password" label="Password" id="j_password" /></td>
								</tr>
						<%--
								<tr>
									<td />
									<td><s:checkbox name="_spring_security_remember_me" /> Remember me on this computer.</td>
								</tr>
						--%>
								<tr>
									<td />
									<td><button type="submit" class="btn btn-primary btn-block">Sign in</button></td>			
								</tr>
							</tbody>
						</table>
					</s:form>
					<p>Don't want to use your domain password or domain password does not work? You can <a href="<s:url namespace="/" action="remind/password" />">generate a password</a> to use only with this
					application.</p>
					<p>Contact <a href="mailto:software@iita.org" title="IITA Software Development Service">software@iita.org</a> for help.</p>
					
					
					<c:if test="${not empty param.login_error}">
						<div id="errorMessages"><span class="errorMessage">Invalid user name or password!</span></div>
					</c:if>
				</div>
				<script type="text/javascript">
					$('j_username').focus();
				</script>
		</div>
	</div>
</div>
</body>
</html>