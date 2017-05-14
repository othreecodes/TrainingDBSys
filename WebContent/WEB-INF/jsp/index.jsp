<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>Training DB Application</title>
<style type="text/css">
	.home-title {
		text-align: left;
  		font-size: 35px;
  		font-family: sans-serif;
  		color: olive;
  		padding-bottom: 20px;
	}
	.ticker-link {
		font-size: x-large;
  		color: #999999;
  		font-family: monospace;
  		text-decoration: underline;
  		font-weight: bold;
  		!important;
	}
	
	.col-sm-6 { float: left; text-align:left; padding-left:75px; !important;}
	
	.col-sm-6 img {padding-left: 10px;}
	
	.search-box { margin-left:75px; !important;}
	
	.yearselect { text-align:left; !important;}
	
	.top-buffer { margin-top:20px; }
	
	.hideDiv {display: none;}
</style>
</head>
<body>
<div class="notice">
	<p>
		<strong>Notice: </strong>This system holds tracks of all training information in the institute. You are advised to go through the procedures for information on proper use of the system. Use the system accordingly and contact <a href="mailto:iita-trainingunit@cgiar.org">IITA-TrainingUnit@cgiar.org</a> on any ambiguities.
	</p>
</div>
<s:if test="pagedAwaitingApproval.totalHits>0">
	<div class="actionMessage">There are <b><s:property value="pagedAwaitingApproval.totalHits" /></b> application request(s) waiting for your
	approval. <s:if test="pagedAwaitingApproval.TotalHits > 0">
		<input type="button" onClick="javascript: window.location='<s:url action="review" />';" value="Review requests" />
	</s:if></div>
</s:if>

<s:if test="pagedAwaitingStaffDevApproval.totalHits>0">
	<div class="actionMessage">There are <b><s:property value="pagedAwaitingStaffDevApproval.totalHits" /></b> staff training application request(s) waiting for your
	approval. <s:if test="pagedAwaitingStaffDevApproval.TotalHits > 0">
		<input type="button" onClick="javascript: window.location='<s:url namespace="/staff" action="review" />';" value="Review requests" />
	</s:if></div>
</s:if>

<s:if test="otherPeoplePending!=null && otherPeoplePending.size()>0">
	<div class="actionMessage">
	<b>DELEGATED APPROVAL: </b>
	<s:iterator value="otherPeoplePending.keys">
		<a href="<s:url action="user/delegate!switchuser"><s:param name="email" value="%{mail}"/></s:url>"><s:property value="fullName" /></a> has <b><s:property value="otherPeoplePending[top]" /></b> request(s) awaiting their approval.
	</s:iterator>
	</div>
</s:if>

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
				        			What do you want to do?        		
				        		</h4>        	
				        	</div>
				            <div class="panel-body">
				                <div class="list-group">
									<a class="list-group-item" href="<s:url namespace="/" action="staff/apply" />">Apply for training</a>
									<a class="list-group-item" href="<s:url namespace="/" action="trainee-register" />">Register new trainee</a>									
									<a class="list-group-item" href="javascript:alert('Coming soon!');">Announce a scholarship program</a>
									<a class="list-group-item" href="<s:url namespace="/" action="announcement/new-training" />">Announce a training program</a>
									<a class="list-group-item" href="javascript:alert('Coming soon!');">Develop training material(s)</a>
									<a class="list-group-item" href="<s:url namespace="/" action="trainingprogram-register" />">Organize a training</a>
									<a class="list-group-item" href="<s:url namespace="/" action="advanced/search" />">Search database</a>
									<a class="list-group-item" href="<s:url namespace="/" action="upload-report" />">Upload Report</a>
									<a class="list-group-item" href="<s:url namespace="/" action="ext-training" />">External training</a>
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
