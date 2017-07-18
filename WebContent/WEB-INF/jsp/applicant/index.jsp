<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<title>Applicant Dashboard: <s:property value="user.fullName" /></title>
</head>
<body>
		<div class="row">
					<div class="col-xs-12 col-md-12 alert alert-info">
								<h3 class="text-center">Kickstart New Application</h3>	
					</div>
		</div>
		
		
		
<div class="row">

		<div class="panel panel-default">
			    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			        <div class="panel panel-default">
			        	<div class="panel-heading">
			        		<h4 class="pabel-title">
			        			Student        		
			        		</h4>        	
			        	</div>
			            <div class="panel-body">
			                <div class="list-group">
								<a class="list-group-item" href="<s:url namespace="/applicant" action="register?trainingOption=Graduate" />">Graduate Research</a>
								<a class="list-group-item" href="<s:url namespace="/applicant" action="register?trainingOption=Internship" />">Internship</a>
							</div>
			            </div>
			        </div>
			    </div>
			    
			    
			    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			        <div class="panel panel-default">
			        	<div class="panel-heading">
			        		<h4 class="pabel-title">
			        			Scientist        		
			        		</h4>        	
			        	</div>
			            <div class="panel-body">
			                <div class="list-group">
								<a class="list-group-item" href="<s:url namespace="/applicant" action="register?trainingOption=Sabbatical" />">Sabbatical/Visiting Scientist</a>
								<a class="list-group-item" href="<s:url namespace="/applicant" action="use-of-facilities" />">Use of Facilities</a>
								<a class="list-group-item" href="<s:url namespace="/applicant" action="external-training-new" />">External Training Application</a>
							</div>
			            </div>
			        </div>
			    </div>
			    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			        <div class="panel panel-default">
			        	<div class="panel-heading">
			        		<h4 class="pabel-title">
			        			Others (Farmers, Partners, etc.)     		
			        		</h4>        	
			        	</div>
			            <div class="panel-body">
			            	<div class="list-group">
								<a class="list-group-item" href="<s:url namespace="/applicant" action="register?trainingOption=Group" />">Group</a>
								<a class="list-group-item" href="<s:url namespace="/applicant" action="register?trainingOption=Individual" />">Individual</a>
							</div>
			            </div>
			        </div>
			    </div>
			</div>
			
</div>







<!-- ends row of panels -->


<div class="row">
	<div class="col-lg-8">
		<div class="row">
		<s:include value="/WEB-INF/jsp/include/public-announcementlisting.jsp" />
		</div>
		<hr>
		<div class="row">
		<s:include value="/WEB-INF/jsp/include/mytraining-list.jsp" />
		</div>

	</div>

<!-- right personal details -->
	<div class="col-lg-4">
		<s:include value="/WEB-INF/jsp/include/personal-data.jsp" />
	</div>

</div>
<!-- ends row of panels -->
</body>
</html>