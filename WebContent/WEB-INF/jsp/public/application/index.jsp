<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<title>CDO Trainings</title>
</head>
<body>
	<div class="container-fluid">
		<section class="container section">
			<h2 class="center-align grey-text text-darken-2">What do you want to do?</h2>		
		</section>
		
		<div class="container">
			<div class="row">
			    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			        <div class="panel panel-default">
			        	<div class="panel-heading">
			        		<h4 class="pabel-title">
			        			Student        		
			        		</h4>        	
			        	</div>
			            <div class="panel-body">
			                <div class="list-group">
								<a class="list-group-item" href="<s:url namespace="/application" action="register?trainingOption=Graduate" />">Graduate Research</a>
								<a class="list-group-item" href="<s:url namespace="/application" action="register?trainingOption=Internship" />">Internship</a>
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
								<a class="list-group-item" href="<s:url namespace="/application" action="register?trainingOption=Sabbatical" />">Sabbatical/Visiting Scientist</a>
								<a class="list-group-item" href="<s:url namespace="/application" action="register?trainingOption=Use of Facilities For" />">Use of Facilities</a>
								<a class="list-group-item" href="<s:url namespace="/" action="external-training-new" />">External Training Application</a>
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
								<a class="list-group-item" href="<s:url namespace="/application" action="register?trainingOption=Group" />">Group</a>
								<a class="list-group-item" href="<s:url namespace="/application" action="register?trainingOption=Individual" />">Individual</a>
							</div>
			            </div>
			        </div>
			    </div>
			</div>
		</div>	
	</div>
</body>
</html>