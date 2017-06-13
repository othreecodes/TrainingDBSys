
<!DOCTYPE html >

<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" class="csstransforms csstransforms3d csstransitions">


<head>
 
<title>
<decorator:title default="" /> | <fmt:message key="webapp.name" />
</title>
<%@ include file="/common/meta.jsp"%>
<decorator:head />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body class="" 
<decorator:getProperty property="body.id" writeEntireProperty="true"/> 
<decorator:getProperty property="body.class" writeEntireProperty="true"/> 
<decorator:getProperty property="body.iita:help" writeEntireProperty="true"/>
>



<s:action name="applock-status" namespace="/" executeResult="true" ignoreContextParams="true" />
			
			
			<div class="well rmmgb" style="text-transform: uppercase;">
				<security:authorize ifNotGranted="ROLE_APPLICANT">
				<security:authorize ifAnyGranted="ROLE_USER">
					<div style="float: right;">
					<form method="get" class="form-inline" action="<s:url action='search' />">
					<input class="form-control" name="q" placeholder="search" style="width: 200px;" value="" />
					<!--  <input class="btn" type="submit" value="Search" /> -->
					 </form>
					</div>
				</security:authorize>
				</security:authorize>
				<h6 class="centered"><strong><fmt:message key="webapp.name" /></strong></h6>
			</div>
			
			
			
    <!-- Fixed navbar -->
   		<jsp:include page="/common/nav.jsp" />
   		
<!-- ----- WELCOME USER ROW----- -->
   
   
	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
	    <div class="container">
			<div class="row">
				<h4><s:action name="user-info" namespace="/" executeResult="true" ignoreContextParams="true" /></h4>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /blue -->

	 
	<!-- *****************************************************************************************************************
	 AGENCY ABOUT
	 ***************************************************************************************************************** -->

	<div class="container mtb">
	 	<div class="row">
	 		 
	 		
	 		<div class="row ">
		 	<div id="main">
	<%@ include file="/common/messages.jsp"%>
	<decorator:body />
	</div>
		 	
		 	</div>
	 	</div><!-- --/row ---->
	 </div>
	 
	<jsp:include page="/common/footer.jsp" />
<jsp:include page="/common/sessionkeeper.jsp" />
	

	
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   
    <script  type="text/javascript" src="<s:url value="/script/assets/js/bootstrap.min.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/assets/js/retina-1.1.0.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/assets/js/jquery.hoverdir.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/assets/js/jquery.hoverex.min.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/assets/js/jquery.prettyPhoto.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/assets/js/jquery.isotope.min.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/assets/js/custom.js" />"></script>
 	<script  type="text/javascript" src="<s:url value="/script/prototype.js" />"></script>
	<script  type="text/javascript" src="<s:url value="/script/scriptaculous.js" />"></script>
	<script type="text/javascript" src="<s:url value="/script/gears/gears_init.js" />"></script>
	<s:action name="google/analytics" namespace="/" executeResult="true" ignoreContextParams="true" />
	
  </body>
</html>
