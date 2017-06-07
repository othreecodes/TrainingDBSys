<%@ include file="/common/taglibs.jsp"%>

<html>
<head>
<title>Training DB Application</title>
<!--  <style type="text/css">
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
</style>-->
</head>
<body>
<div class="alert alert-warning">
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


<div class="col-lg-8">
	 			<! -- Blog Post 1 -->
		 		<p><img class="img-responsive" src="assets/img/post01.jpg"></p>
		 		<a href="single-post.html"><h3 class="ctitle">Time to change your apps.</h3></a>
		 		<p><csmall>Posted: April 25, 2014.</csmall> | <csmall2>By: Admin - 3 Comments</csmall2></p>
		 		<p><b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
		 		<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
		 		<p>Contrary to popular belief, <b>Lorem Ipsum is not simply random text</b>. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at <a href="#">Hampden-Sydney College</a> in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
		 		<p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
		 		<h4>Why do we use it?</h4>
		 		<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
		 		<blockquote>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</blockquote>
		 		<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
		 		<div class="spacing"></div>
		 		<h6>SHARE:</h6>
		 		<p class="share">
		 			<a href="#"><i class="fa fa-twitter"></i></a>
		 			<a href="#"><i class="fa fa-facebook"></i></a>
		 			<a href="#"><i class="fa fa-tumblr"></i></a>
		 			<a href="#"><i class="fa fa-google-plus"></i></a>		 		
		 		</p>
		 		
			</div><! --/col-lg-8 -->
	 		
	 		
	 		<! -- SIDEBAR -->
	 		<div class="col-lg-4">
		 		<h4>Search</h4>
		 		<div class="hline"></div>
		 			<p>
		 				<br/>
		 				<input type="text" class="form-control" placeholder="Search something">
		 			</p>
		 			
		 		<div class="spacing"></div>
		 		
		 		<h4>Categories</h4>
		 		<div class="hline"></div>
			 		<p><a href="#"><i class="fa fa-angle-right"></i> Wordpress</a> <span class="badge badge-theme pull-right">9</span></p>
			 		<p><a href="#"><i class="fa fa-angle-right"></i> Photoshop</a> <span class="badge badge-theme pull-right">3</span></p>
			 		<p><a href="#"><i class="fa fa-angle-right"></i> Web Design</a> <span class="badge badge-theme pull-right">11</span></p>
			 		<p><a href="#"><i class="fa fa-angle-right"></i> Development</a> <span class="badge badge-theme pull-right">5</span></p>
			 		<p><a href="#"><i class="fa fa-angle-right"></i> Tips & Tricks</a> <span class="badge badge-theme pull-right">7</span></p>
			 		<p><a href="#"><i class="fa fa-angle-right"></i> Code Snippets</a> <span class="badge badge-theme pull-right">12</span></p>

		 		<div class="spacing"></div>
		 		
		 		<h4>Recent Posts</h4>
		 		<div class="hline"></div>
					<ul class="popular-posts">
		                <li>
		                    <a href="#"><img src="assets/img/thumb01.jpg" alt="Popular Post"></a>
		                    <p><a href="#">Lorem ipsum dolor sit amet consectetur adipiscing elit</a></p>
		                    <em>Posted on 02/21/14</em>
		                </li>
		                <li>
		                    <a href="#"><img src="assets/img/thumb02.jpg" alt="Popular Post"></a>
		                    <p><a href="#">Lorem ipsum dolor sit amet consectetur adipiscing elit</a></p>
		                    <em>Posted on 03/01/14</em>
		                <li>
		                    <a href="#"><img src="assets/img/thumb03.jpg" alt="Popular Post"></a>
		                    <p><a href="#">Lorem ipsum dolor sit amet consectetur adipiscing elit</a></p>
		                    <em>Posted on 05/16/14</em>
		                </li>
		                <li>
		                    <a href="#"><img src="assets/img/thumb04.jpg" alt="Popular Post"></a>
		                    <p><a href="#">Lorem ipsum dolor sit amet consectetur adipiscing elit</a></p>
		                    <em>Posted on 05/16/14</em>
		                </li>
		            </ul>
		            
		 		<div class="spacing"></div>
		 		
		 		<h4>Popular Tags</h4>
		 		<div class="hline"></div>
		 			<p>
		            	<a class="btn btn-theme" href="#" role="button">Design</a>
		            	<a class="btn btn-theme" href="#" role="button">Wordpress</a>
		            	<a class="btn btn-theme" href="#" role="button">Flat</a>
		            	<a class="btn btn-theme" href="#" role="button">Modern</a>
		            	<a class="btn btn-theme" href="#" role="button">Wallpaper</a>
		            	<a class="btn btn-theme" href="#" role="button">HTML5</a>
		            	<a class="btn btn-theme" href="#" role="button">Pre-processor</a>
		            	<a class="btn btn-theme" href="#" role="button">Developer</a>
		            	<a class="btn btn-theme" href="#" role="button">Windows</a>
		            	<a class="btn btn-theme" href="#" role="button">Phothosop</a>
		            	<a class="btn btn-theme" href="#" role="button">UX</a>
		            	<a class="btn btn-theme" href="#" role="button">Interface</a>		            	
		            	<a class="btn btn-theme" href="#" role="button">UI</a>		            	
		            	<a class="btn btn-theme" href="#" role="button">Blog</a>		            	
		 			</p>
	 		</div>



	
	
	
	
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
									<a class="list-group-item" href="<s:url namespace="/" action="external-training-new" />">External Training Application</a>
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