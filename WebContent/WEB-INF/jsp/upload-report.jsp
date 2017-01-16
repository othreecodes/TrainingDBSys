<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Report upload type</title>
</head>
<body>
<table style="width:100%">
	<colgroup><col width="80%"/><col width="20%"/>
	</colgroup>
	<tr>
		<td style="vertical-align: top; padding-right: 30px">
<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				        <div class="panel panel-default">
				        	<div class="panel-heading">
				        		<h4 class="pabel-title">
				        			What type of report do you want to upload?        		
				        		</h4>        	
				        	</div>
				            <div class="panel-body">
				                <div class="list-group">
									<a class="list-group-item" href="<s:url namespace="/" action="trainees/list" />">Trainee</a>
									<a class="list-group-item" href="<s:url namespace="/" action="programs/list" />">Training Program</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</td>
		<td valign="top">
			<div class="row alert alert-info">
				<div class="col-sm-12">
					<s:form method="post" name="staffForm" namespace="/staff" action="index">
						<s:if test="getUser().hasRole('ROLE_ADMIN') || getUser().hasRole('ROLE_CDO') || getUser().hasRole('ROLE_TRAININGUNITHEAD')">
							<s:submit value="Staff Training Applications" cssClass="btn btn-warning" />
						</s:if>
						<s:else>
							<s:submit value="My Training Applications" cssClass="btn btn-warning" />
						</s:else>
			    	</s:form>
				</div>
			</div>
			<div class="row alert alert-info">
				<div class="col-sm-12">
			    	<img src="<c:url value="traineechart.png" />" />
			    </div>
			    <div class="clearfix" style="height:10px; clear: both;"></div>
			    <div class="col-sm-12">
			    	<img src="<c:url value="groupchart.png" />" />
			    </div>
			</div>
			<div class="row alert alert-warning">
				<div class="col-sm-12">
					<%@ include file="/common/yearmodules.jsp"%>
				</div>
			</div>
			<s:if test="applications!=null && applications.size>0">
				<div class="row">
					<div class="col-sm-12">
						<h3>Latest applications</h3>
						<ul>
						<s:iterator value="applications">
							<li><s:include value="/WEB-INF/jsp/include/applications-short.jsp" /></li>
						</s:iterator>
						</ul>
					</div>
				</div>
			</s:if>
			<div class="row alert alert-danger">
				<div class="col-sm-12" style="text-align: center">
					<p><a href="<s:url action="alerts"/>" class="image-border"><img src="/training/img/alert_notifications.png" class="img-rounded"></a></p>
					<h4><a href="<s:url action="alerts"/>">Notification monitor</a></h4>
				</div>
			</div>
			<div class="row alert alert-warning">
			    <div class="col-sm-12" style="text-align: center">
			      	<p><a href="<s:url action="tagcloud"/>" class="image-border"><img src="/training/img/tag_cloud.png" class="img-rounded"></a></p>
			    	<h4><a href="<s:url action="tagcloud"/>">Tag cloud</a></h4>
			    </div>
			</div>
		</td>
	</tr>
</table> 
<script>
$(document).ready(function(){
	$("#btnSearch").click(function() {
		$("#frmSearch").submit();
	});
});
</script>
</body>
</html>