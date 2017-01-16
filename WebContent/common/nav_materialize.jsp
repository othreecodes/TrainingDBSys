<%@ include file="/common/taglibs.jsp"%>
<header>
			<nav class="white">
				<div class="container">
					<div class="nav-wrapper">				
							<security:authorize ifAnyGranted="ROLE_USER">
			                        <ul id="manage" class="dropdown-content">
			                            <security:authorize ifAnyGranted="ROLE_STAFF">
											<security:authorize ifAnyGranted="ROLE_USER">
											 	<li><a href="<s:url namespace='/selection' action='index' includeParams="none" />"><span>Selection</span></a></li>
												<li><a href="<s:url namespace="/" action='trainees/list' />"><span>Trainees</span></a></li>
												<li><a href="<s:url namespace="/" action='programs/list' />"><span>Training Programs</span></a></li>
												<li><a href="<s:url namespace='/' action='announcement/trainingproposal' />"><span>Training Proposal</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='alumni/index' />"><span>Alumni</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='partner/list' />"><span>Partners</span></a>
											</security:authorize>
											
											<li><a href="<s:url namespace='/announcement' action='cdoindex' />"><span>Announcements</span></a></li>
										</security:authorize>
										
										<security:authorize ifNotGranted="ROLE_STAFF,ROLE_APPLICANT">
											<security:authorize ifAnyGranted="ROLE_USER">
											 	<li><a href="<s:url namespace='/selection' action='index' includeParams="none" />"><span>Selection</span></a></li>
												<li><a href="<s:url namespace="/" action='trainees/list' />"><span>Trainees</span></a></li>
												<li><a href="<s:url namespace="/" action='programs/list' />"><span>Training Programs</span></a></li>
												<li><a href="<s:url namespace='/' action='announcement/trainingproposal' />"><span>Training Proposal</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='alumni/index' />"><span>Alumni</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='partner/list' />"><span>Partners</span></a>							
											</security:authorize>
											<li><a href="<s:url namespace='/announcement' action='cdoindex' />"><span>Announcements</span></a></li>
										</security:authorize>
			                        </ul>
			                        
			                        <ul id="managem" class="dropdown-content">
			                            <security:authorize ifAnyGranted="ROLE_STAFF">
											<security:authorize ifAnyGranted="ROLE_USER">
											 	<li><a href="<s:url namespace='/selection' action='index' includeParams="none" />"><span>Selection</span></a></li>
												<li><a href="<s:url namespace="/" action='trainees/list' />"><span>Trainees</span></a></li>
												<li><a href="<s:url namespace="/" action='programs/list' />"><span>Training Programs</span></a></li>
												<li><a href="<s:url namespace='/' action='announcement/trainingproposal' />"><span>Training Proposal</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='alumni/index' />"><span>Alumni</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='partner/list' />"><span>Partners</span></a>
											</security:authorize>
											
											<li><a href="<s:url namespace='/announcement' action='cdoindex' />"><span>Announcements</span></a></li>
										</security:authorize>
										
										<security:authorize ifNotGranted="ROLE_STAFF,ROLE_APPLICANT">
											<security:authorize ifAnyGranted="ROLE_USER">
											 	<li><a href="<s:url namespace='/selection' action='index' includeParams="none" />"><span>Selection</span></a></li>
												<li><a href="<s:url namespace="/" action='trainees/list' />"><span>Trainees</span></a></li>
												<li><a href="<s:url namespace="/" action='programs/list' />"><span>Training Programs</span></a></li>
												<li><a href="<s:url namespace='/' action='announcement/trainingproposal' />"><span>Training Proposal</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='alumni/index' />"><span>Alumni</span></a></li>
											</security:authorize>
											<security:authorize ifAnyGranted="ROLE_PARTNERADMIN,ROLE_PARTNERREADALL">
												<li><a href="<s:url namespace='/' action='partner/list' />"><span>Partners</span></a>							
											</security:authorize>
											<li><a href="<s:url namespace='/announcement' action='cdoindex' />"><span>Announcements</span></a></li>
										</security:authorize>
			                        </ul>
			                    					
			                    <ul id="search" class="dropdown-content">
			                            <security:authorize ifAnyGranted="ROLE_STAFF">
											<security:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM">
												<li><a href="<s:url namespace='/' action='query/index' />"><span>Query</span></a></li>
											</security:authorize>
											<li><a href="<s:url namespace='/' action='advanced/search' />"><span>Advanced Search</span></a></li>
											<security:authorize ifAnyGranted="ROLE_CRM,ROLE_STAFF,ROLE_USER">		
												<li><a href="<s:url namespace='/announcement' action='search-applications' />"><span>Search Applications</span></a></li>
											</security:authorize>
										</security:authorize>
			                            
			                            <security:authorize ifNotGranted="ROLE_STAFF,ROLE_APPLICANT">
											<security:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM">
												<li><a href="<s:url namespace='/' action='query/index' />"><span>Query</span></a>
												<li><a href="<s:url namespace='/' action='advanced/search' />"><span>Advanced Search</span></a></li>		
												<li><a href="<s:url namespace='/announcement' action='search-applications' />"><span>Search Applications</span></a></li>
											</security:authorize>
										</security:authorize>
			                        </ul>
			                        
			                        <ul id="searchm" class="dropdown-content">
			                            <security:authorize ifAnyGranted="ROLE_STAFF">
											<security:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM">
												<li><a href="<s:url namespace='/' action='query/index' />"><span>Query</span></a></li>
											</security:authorize>
											<li><a href="<s:url namespace='/' action='advanced/search' />"><span>Advanced Search</span></a></li>
											<security:authorize ifAnyGranted="ROLE_CRM,ROLE_STAFF,ROLE_USER">		
												<li><a href="<s:url namespace='/announcement' action='search-applications' />"><span>Search Applications</span></a></li>
											</security:authorize>
										</security:authorize>
			                            
			                            <security:authorize ifNotGranted="ROLE_STAFF,ROLE_APPLICANT">
											<security:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN,ROLE_QUERY,ROLE_QUERYMANAGER,ROLE_TRAININGUNITHEAD,ROLE_CRM">
												<li><a href="<s:url namespace='/' action='query/index' />"><span>Query</span></a>
												<li><a href="<s:url namespace='/' action='advanced/search' />"><span>Advanced Search</span></a></li>		
												<li><a href="<s:url namespace='/announcement' action='search-applications' />"><span>Search Applications</span></a></li>
											</security:authorize>
										</security:authorize>
			                        </ul>
		                    </security:authorize>
		                
		                
		                <security:authorize ifAnyGranted="ROLE_USER">
			                <ul id="setting" class="dropdown-content">
										<security:authorize ifAnyGranted="ROLE_ADMIN">
											<li><a href="<c:url value="/admin/" />"><span>Administration</span></a></li>
										</security:authorize>
			                        	<security:authorize ifAnyGranted="ROLE_USER">
											<li><a href="<s:url namespace="/" action="calendar" />"><span>Calendar</span></a></li>
											<li><a href="<s:url namespace='/' action='user/notification' />"><span>Notifications</span></a></li>
											<li><a href="<s:url namespace='/' action='user/delegate' />"><span>Delegate</span></a></li>
											<li><a href="mailto:software@iita.org?subject=Training Database Application bug report" title="Send a bug report"><span>Report Bug</span></a></li>
										</security:authorize>
			                  </ul>
			                  
			                  <ul id="settingm" class="dropdown-content">
										<security:authorize ifAnyGranted="ROLE_ADMIN">
											<li><a href="<c:url value="/admin/" />"><span>Administration</span></a></li>
										</security:authorize>
			                        	<security:authorize ifAnyGranted="ROLE_USER">
											<li><a href="<s:url namespace="/" action="calendar" />"><span>Calendar</span></a></li>
											<li><a href="<s:url namespace='/' action='user/notification' />"><span>Notifications</span></a></li>
											<li><a href="<s:url namespace='/' action='user/delegate' />"><span>Delegate</span></a></li>
											<li><a href="mailto:software@iita.org?subject=Training Database Application bug report" title="Send a bug report"><span>Report Bug</span></a></li>
										</security:authorize>
			                  </ul>
		                </security:authorize>
	
						<a href="#" data-activates="mobile-demo" class="button-collapse right"><i class="material-icons indigo-text darken-3">menu</i></a>						
				      	<ul class="right hide-on-med-and-down">
							<security:authorize ifNotGranted="ROLE_APPLICANT,ROLE_USER">
								<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="public/index" />">Home</a></li>
								<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="application/index" />">Public domain</a></li>
								<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="application/incomplete" />">Continue Registration?</a></li>
							</security:authorize>
							
							<security:authorize ifAllGranted="ROLE_APPLICANT">
								<li><a class="indigo-text darken-3" href="<s:url namespace="/applicant" action="index" />">Applicant dashboard</a></li>
							</security:authorize>
							
							<security:authorize ifAnyGranted="ROLE_STAFF">
								<security:authorize ifAnyGranted="ROLE_USER">
									<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="index" />">System dashboard</a></li>
								</security:authorize>
							</security:authorize>
							
							
		                    <security:authorize ifNotGranted="ROLE_STAFF,ROLE_APPLICANT">
			                    <security:authorize ifAnyGranted="ROLE_USER">
									<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="index" />">Dashboard</a></li>
								</security:authorize>
			                    <security:authorize ifAnyGranted="ROLE_APPLICANT">
									<li><a class="indigo-text darken-3" href="<s:url namespace="/applicant" action="index" />">Applicant Switch</a></li>
								</security:authorize>
							</security:authorize>
							
							<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_TRAININGUNITHEAD,ROLE_ITAICT,ROLE_IYAMANAGER,ROLE_IYAUSER">
								<li><a class="indigo-text darken-3" href="<s:url namespace='/iya' action='index' />">IYA Agripreneurs</a></li>
							</security:authorize>
							
							<security:authorize ifAnyGranted="ROLE_USER">
					        	<li><a class="dropdown-button" data-activates="manage" href="">Manage<i class="material-icons right">arrow_drop_down</i></a></li>
					        	<li><a class="dropdown-button" data-activates="search" href="">Search<i class="material-icons right">arrow_drop_down</i></a></li>
					        	<li><a class="dropdown-button" data-activates="setting" href="">Setting<i class="material-icons right">arrow_drop_down</i></a></li>
					    	</security:authorize>
					    	
					    	<security:authorize ifAnyGranted="ROLE_CFO">
								<li><a class="indigo-text darken-3" href="<c:url value="/cfo/" />">CFO</a></li>
							</security:authorize>
									
							<security:authorize ifAnyGranted="ROLE_TRAININGUNITHEAD">
								<li><a class="indigo-text darken-3" href="<c:url value="/cdo/" />">CDO Head</a></li>
							</security:authorize>
									
					         <security:authorize ifAnyGranted="ROLE_USER">
					         	<li><a class="indigo-text darken-3" href="<c:url value='/j_spring_security_logout' />" title="Log out">Log out</a></li>
					         </security:authorize>
				      	</ul>
				      	
					    <ul class="side-nav" id="mobile-demo">
					        <security:authorize ifNotGranted="ROLE_APPLICANT,ROLE_USER">
					        	<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="public/index" />">Home</a></li>
								<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="application/index" />">Get Trained</a></li>
								<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="application/incomplete" />">Continue Registration?</a></li>
							</security:authorize>
							
							<security:authorize ifAllGranted="ROLE_APPLICANT">
								<li><a class="indigo-text darken-3" href="<s:url namespace="/applicant" action="index" />">Applicant dashboard</a></li>
							</security:authorize>
							
							<security:authorize ifAnyGranted="ROLE_STAFF">
								<security:authorize ifAnyGranted="ROLE_USER">
									<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="index" />">System dashboard</a></li>
								</security:authorize>
							</security:authorize>
							
							
		                    <security:authorize ifNotGranted="ROLE_STAFF,ROLE_APPLICANT">
			                    <security:authorize ifAnyGranted="ROLE_USER">
									<li><a class="indigo-text darken-3" href="<s:url namespace="/" action="index" />">Dashboard</a></li>
								</security:authorize>
			                    <security:authorize ifAnyGranted="ROLE_APPLICANT">
									<li><a class="indigo-text darken-3" href="<s:url namespace="/applicant" action="index" />">Applicant Switch</a></li>
								</security:authorize>
							</security:authorize>
							
							<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_TRAININGUNITHEAD,ROLE_ITAICT,ROLE_IYAMANAGER,ROLE_IYAUSER">
								<li><a class="indigo-text darken-3" href="<s:url namespace='/iya' action='index' />">IYA Agripreneurs</a></li>
							</security:authorize>
							
							<security:authorize ifAnyGranted="ROLE_USER">
					        	<li><a class="dropdown-button" data-constrainwidth="false" data-activates="managem" href="#">Manage<i class="material-icons right">arrow_drop_down</i></a></li>					        
					        	<li><a class="dropdown-button" data-constrainwidth="false" data-activates="searchm" href="#">Search<i class="material-icons right">arrow_drop_down</i></a></li>
					        	<li><a class="dropdown-button" data-constrainwidth="false" data-activates="settingm" href="#">Setting<i class="material-icons right">arrow_drop_down</i></a></li>
					    	</security:authorize>
					    	
					    	<security:authorize ifAnyGranted="ROLE_CFO">
								<li><a class="indigo-text darken-3" href="<c:url value="/cfo/" />">CFO</a></li>
							</security:authorize>
									
							<security:authorize ifAnyGranted="ROLE_TRAININGUNITHEAD">
								<li><a class="indigo-text darken-3" href="<c:url value="/cdo/" />">CDO Head</a></li>
							</security:authorize>
									
					         <security:authorize ifAnyGranted="ROLE_USER">
					         	<li><a class="indigo-text darken-3" href="<c:url value='/j_spring_security_logout' />" title="Log out">Log out</a></li>
					         </security:authorize>
					    </ul>
				    </div>
				</div>
			</nav>
		</header>