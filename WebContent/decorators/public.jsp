<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>IITA Training System</title>
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



<body
	<decorator:getProperty property="body.id" writeEntireProperty="true"/>
	<decorator:getProperty property="body.class" writeEntireProperty="true"/>
	<decorator:getProperty property="body.iita:help" writeEntireProperty="true"/>>
 <s:action name="applock-status" namespace="/"
		executeResult="true" ignoreContextParams="true" />

	<div class="well rmmgb" style="text-transform: uppercase;">
		<security:authorize ifNotGranted="ROLE_APPLICANT">
			<security:authorize ifAnyGranted="ROLE_USER">
				<div style="float: right;">
					<form method="get" class="form-inline"
						action="<s:url action='search' />">
						<input class="form-control" name="q" placeholder="search"
							style="width: 200px;" value="" /> <input class="btn"
							type="submit" value="Search" />
					</form>
				</div>
			</security:authorize>
		</security:authorize>
		<h6 class="centered">
			<strong><fmt:message key="webapp.name" /></strong>
		</h6>
	</div>


	<!-- *****************************************************************************************************************
	 NAVBAR
	 ***************************************************************************************************************** -->
	<jsp:include page="/common/nav_public.jsp" /></div>




	<!-- *****************************************************************************************************************
	section
	 ***************************************************************************************************************** -->
	<section id="hero" style="   
	background: linear-gradient(135deg, rgba(221, 112, 37,0.8) 0%,rgba(166,0,166,0.8) 50%,rgba(239, 158, 59,0.8) 100%), /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	 url(../img/1400_banner.jpg);
    background-size: cover;
    background-position: center;
  	margin-bottom: 30px;
    position: relative;
    height: 500px;
	padding-top:80px;
	" >
	<div class="hero-text container">
		<div class="center-align" style="color:white;">
			<h1>
				Welcome <br /></>to <br />IITA TRAINING SYSTEM
			</h1>
			<div style="padding-top: 20px;">
				<a class="waves-effect waves-purple btn-large grey lighten-4"href="<s:url namespace="/" action="login" />">
				<span class="hero-button  brown-text darken-1">IITA Staff</span></a>
				 
				 <a class="waves-effect waves-purple btn-large grey lighten-4"
					href="<s:url namespace="/" action="application/index" />">
					<span class="hero-button bold indigo-text darken-3">Non-IITA Staff</span></a>
			</div>
		</div>
	</div>
	</section> 
	
	
	<section class="container section">
	<h1 class="center-align" >
		<a style=" font-family: 'Lato', sans-serif; font-size:larger; color:brown;" href="<s:url namespace="/application" action="solicited-apps" />">Training/Scholarship
			Announcements</a>
	</h1>
	<p class="center-align">We have training options available &amp;
		suitable for you.</p>
	</section>





<div class="container mtb" style="margin-bottom: 0px;" >
	 	<div class="row">
	 		 
		 	<div id="main">
	<%@ include file="/common/messages.jsp"%>
	<decorator:body />
	</div>
		 	
	 	</div><!-- --/row ---->
	 </div>
	 
<jsp:include page="/common/footer.jsp" />
<jsp:include page="/common/sessionkeeper.jsp" />
	

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/bootstrap.min.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/retina-1.1.0.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/jquery.hoverdir.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/jquery.hoverex.min.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/jquery.prettyPhoto.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/jquery.isotope.min.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/assets/js/custom.js" />"></script>
	<script type="text/javascript"
		src="<s:url value="/script/gears/gears_init.js" />"></script>
	<s:action name="google/analytics" namespace="/" executeResult="true"
		ignoreContextParams="true" />
</body>
</html>