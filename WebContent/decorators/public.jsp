<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title><decorator:title default="Untitled page" /> | <fmt:message key="webapp.name" /></title>
<%@ include file="/common/meta.jsp"%>
<!-- This section is imported for materializecss -->
	<!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/style_materialize.css'/>"  media="screen,projection"/>
    <!-- Add Web font-->
    <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville|Open+Sans" rel="stylesheet"> 
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<!-- Materializecss section end here -->
<decorator:head />
</head>
<body <decorator:getProperty property="body.id" writeEntireProperty="true"/> <decorator:getProperty property="body.class" writeEntireProperty="true"/> <decorator:getProperty property="body.iita:help" writeEntireProperty="true"/>>
<main>
	<div style="" class="noprint">
	<table style="width: 100%">
		<col width="150px" />
		<col />
		<tr>
			<td rowspan="2" style="vertical-align: middle; padding-right: 10px; margin-left:10px;"><a href="<s:url action="index" namespace="/" />" title="Go to dashboard of <fmt:message key="webapp.name" />"><img src="<c:url value='/img/train_50.png'/>" alt="IITA"
						style="float: left;" /></a></td>
			<security:authorize ifNotGranted="ROLE_APPLICANT">
				<security:authorize ifAnyGranted="ROLE_USER">
					<td style="vertical-align: top; padding: 0;">
								
						<s:action name="applock-status" namespace="/" executeResult="true" ignoreContextParams="true" />
						<div style="padding: 3px 6px;">
										
						<div style="float: right;"><form method="get" action="<s:url action='search' />"><input name="q" style="width: 200px;" value="" /> <input type="submit" value="Search" /></form></div>
										
						<h1 style="margin: 0px 0px 3px 0px; padding: 0px; font-size: 1.2em;"><fmt:message key="webapp.name" /></h1>
						</div>
					</td>
				</security:authorize>
			</security:authorize>
		</tr>
		<tr>
			<td style="vertical-align: middle; padding: 5px 0 0 0;">
				<div style="margin: 1pt 0px 6px 0px;"><jsp:include page="/common/nav_public.jsp" /></div>
			</td>
		</tr>
	</table>
	</div>
	
	<section id="hero" style="margin-top:50px;">
					<div class="hero-text container">
						<div class="center-align">
							<h2 class="white-text center-align heroshadow">Welcome to IITA Training System</h2>
							<div style="margin-top:50px;">
								<a class="waves-effect waves-purple btn-large grey lighten-4" href="<s:url namespace="/" action="login" />"><span class="hero-button indigo-text darken-3">IITA Staff</span></a> <a class="waves-effect waves-purple btn-large grey lighten-4" href="<s:url namespace="/" action="application/index" />"><span class="hero-button indigo-text darken-3">Non-IITA Staff</span></a>
							</div>
						</div>
					</div>
				</section>

			<section class="container section">
				<h2 class="center-align grey-text text-darken-2"><a href="<s:url namespace="/application" action="solicited-apps" />">Training/Scholarship Announcements</a></h2>
				<p class="center-align">We have training options available &amp; suitable for you.</p>
			</section>
	
	<div style="margin: 10px 15px 0px 15px;">
		<div id="main">
		<%@ include file="/common/messages.jsp"%>
		<decorator:body />
		</div>
	</div>

<jsp:include page="/common/footer_public.jsp" />
</main>
<jsp:include page="/common/sessionkeeper.jsp" />
<script type="text/javascript" src="<s:url value="/script/gears/gears_init.js" />"></script>
<s:action name="google/analytics" namespace="/" executeResult="true" ignoreContextParams="true" />
</body>
</html>