<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>
<decorator:title default="Untitled page" /> | <fmt:message key="webapp.name" /> Administration
</title>
<%@ include file="/common/meta.jsp"%>


<decorator:head />

 <script  type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<script type="text/javascript" src="<c:url value="/help/script/help.js" />"></script>
</head>
<body
 <decorator:getProperty property="body.id" writeEntireProperty="true"/> 
 <decorator:getProperty property="body.class" writeEntireProperty="true"/>
 >



<s:action name="applock-status" namespace="/" executeResult="true" ignoreContextParams="true" />
			
			
			<div class="well rmmgb" style="text-transform: uppercase;">
					<form method="get" class="form-inline" >
					<div style="float: right;"><s:include value="/WEB-INF/jsp/admin/fast-switch.jsp" /> </div>

					</form>
					</div>
				<h6 class="centered"><strong>Administration: <fmt:message key="webapp.name" /></strong></h6>
			</div>
			
			
			
    <!-- Fixed navbar -->
   		<jsp:include page="/common/adminmenu.jsp" />
   		
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
	

		<div class="container mtb">
	 	<div class="row">
		 	<div id="main">
	<%@ include file="/common/messages.jsp"%>
	<decorator:body />
	</div>
	 	</div><!-- --/row ---->
	 </div>
	
	
<jsp:include page="/common/footer.jsp" />
<jsp:include page="/common/sessionkeeper.jsp" />
<script type="text/javascript">
Event.observe(window, "load", function() {
	// provide base href to help content
	IITAHELP = new IITA.Help("<c:url value="/" />help/admin/");
});
</script>

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
</body>
</html>
