<%@ include file="/common/taglibs.jsp"%>
<div class="container">

	<div class="table-responsive">
		<hgroup class="mb20">
			<s:if test="getUser().hasRole('ROLE_ADMIN') || getUser().hasRole('ROLE_MANAGER') || getUser().hasRole('ROLE_TRAININGUNITHEAD')">
				<h1>Staff Training Application(s) List</h1>
			</s:if>
			<s:else>
				<h1>My Training Application(s) List</h1>
			</s:else>
			<h2 class="lead"><strong class="text-danger"><s:property value="paged.totalHits" /></strong> result(s) found!</h2>								
		</hgroup>
		
			<s:iterator value="paged.results" status="status">
				<article class="search-result">
					<div class="col-xs-12 col-sm-12 col-md-2">
						<s:property value="#status.count + paged.startAt" />. <s:property value="fullName" />
						<s:if test="status==@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@NEW">
						<br/>
						<a href="<s:url namespace="/staff" action="delete" />?id=<s:property value="id" />" onclick="if(confirm('Delete this course')){return true;}else{return false;}">Delete</a>
						</s:if>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-3">
						<ul class="meta-search">
							<li><i class="glyphicon glyphicon-user"></i> <span>Status: 
							<s:if test="approvalStatus!=null">
								<s:text name="staffdev.approvalStatus.%{approvalStatus}" />
							</s:if>
							<s:else>
								<s:text name="staffdev.status.%{status}" />
							</s:else></span></li>
							<li><i class="glyphicon glyphicon-calendar"></i> <span><s:date format="%{getText('date.format')}" name="startDate" /> - <s:date format="%{getText('date.format')}" name="endDate" /> (<s:property value="duration" />)</span></li>
							<li><i class="glyphicon glyphicon-tags"></i> <span>Location: <s:property value="location" /></span></li>
							<li><i class="glyphicon glyphicon-time"></i> <span>Country: <s:property value="country" /></span></li>
						</ul>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-7 excerpet">
						<h3><a href="<s:if test="status!=@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@NEW"><s:url namespace="/staff" action="view" /></s:if><s:else><s:url namespace="/staff" action="edit" /></s:else>?id=<s:property value="id" />" title=""><s:if test="applyCourse!=null"><s:property value="applyCourse" /> ...</s:if><s:else>Not titled course</s:else></a></h3>
						<p>Directorate: <i class="glyphicon glyphicon-plus"><s:property value="directorate" /></i></p>
						<p>Duty Station: <s:property value="dutyStation" /></p>
						<p>Hub: <s:property value="hub" /></p>
						<s:if test="supervisor!=null">
							<p>Supervisor: <s:property value="supervisor.displayName" /></p>					
		                </s:if>
		                
					</div>
					<span class="clearfix borda"></span>
				</article>
			</s:iterator>
	</div>
</div>