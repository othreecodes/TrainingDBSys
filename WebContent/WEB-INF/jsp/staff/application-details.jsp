<%@ include file="/common/taglibs.jsp"%>
<%-- <%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>

<html lang="en">
<head>
    <title>Staff Training Application Details</title>
    <style type="text/css">
		.singleColumn{ padding-left: 5px; font-weight:normal;}
		.lr{float:left; width:100%}
		@media print {
		    .appLogo {display:block;}
		    .appAction {display:none !important;}
		 }
		 
		 @media screen {
		    .appLogo {display:none;}
		    .appAction {display:block;}
		 }
	</style>
</head>
<body>
<div class="pull-right" style="width:220px">
<s:form method="post" name="staffForm" namespace="/staff" action="index">
	<s:submit value="Go to list!" cssClass="btn btn-warning appAction pull-left" /> <input type="button" value="Print detail" id="print" class="btn btn-info appAction pull-right" onclick="javascript: window.print();" /> 
</s:form>
</div>
<div class="appLogo">
	<div><img src="/training/img/logo.gif" /></div>
	<div><h3>Staff Training and Development Application Form</h3></div>
</div>
<div class="container-fluid">
<h2>Reference Number: <s:property value="sd.referenceNumber" /> (<s:property value="sd.fullName" />)</h2>

<div class=" col col-sm-12">
	
	<div class="notice">
		<p>
			<strong>Agreement: </strong>Please read carefully the announcement criteria and instructions before you submit your form. Failure to adhere strictly may lead to disqualification. Make sure you attach the course description of the proposed course before submission.
		</p>
	</div>
	
		<h3>SECTION A:- TO BE COMPLETED BY APPLICANT</h3>
	    <table id="locTable" class="table">
	    	<tr>
				<td colspan="3">
				<h3>Personal Details</h3>
				</td>
			</tr>
			<tr>
				<td colspan="3">
				<strong>Status:</strong> 
				<s:if test="sd.approvalStatus!=null">
					<s:text name="staffdev.approvalStatus.%{sd.approvalStatus}" />
				</s:if>
				<s:else>
					<s:text name="staffdev.status.%{sd.status}" />
				</s:else>
				</td>
			</tr>
	    	<tr>
				<td>
					<strong>Surname:</strong>  <s:property id="lastname" value="sd.lastName" />
				</td>
			    <td colspan="2">
			    	<strong>Given Name(s):</strong>
				     <s:property id="lastname" value="sd.givenName" />
			    </td>
			</tr>
			<tr>
				<td>
			        <strong>Designation:</strong>
				                <s:property id="designation" value="sd.designation" />
				</td>
			    <td colspan="2">
				            <strong>PG/IRS PG:</strong>
				            	<s:property id="payGrade" value="sd.payGrade" />
				</td>
		     </tr>
		     <tr>
			    <td>       
		            <strong>Unit/Project:</strong>
			                	<s:property id="unit" value="sd.unit" />
				 </td>
			    <td colspan="2"><strong>Directorate:</strong>
				                <s:property id="directorate" value="sd.directorate" />
				</td>
			</tr>
		    <tr>
		    	<td>
		    		<strong>Duty Station:</strong>
				                <s:property id="dutyStation" value="sd.dutyStation" />
				</td>
			    <td colspan="2">
			    	<strong>Hub:</strong>
				            	<s:property value="sd.hub" />
				</td>
			</tr>
		    <tr>
		    	<td>
		    		<strong>Gender:</strong>
				                <s:property id="gender" value="sd.gender" />
				</td>
			    <td>
			    	<strong>Supervisor:</strong>
								<s:property id="supervisor" value="sd.supervisor.fullName" />
				</td>
				<td>
					<strong>Head of Unit:</strong>
								<s:property id="hod" value="sd.hod.fullName" />
				</td>
			</tr>

			<tr>
		    	<td colspan="3">
		            <strong>Highest Educational qualification:</strong>
			                	<s:property id="highestQualify" value="sd.highestQualify" />     
			    </td>
			</tr>
			<tr>
				<td colspan="3">
					<strong>List briefly your job description:</strong>
			                	<s:property id="jobDescription" value="sd.jobDescription" />     
			   </td>
			</tr>
		     <tr>
				<td colspan="3">
					<strong>Type of Training:</strong>
				                <s:property id="trainingType" value="sd.trainingType" />
				 </td>
			</tr>
			        
			 <tr>
				<td colspan="3">       
					<h3>Course details</h3>
				</td>
			</tr>
			        
			<tr>
				<td colspan="3">
					<strong>Course applying for:</strong>
			                	<s:property id="applyCourse" value="sd.applyCourse" />     
			    <td>
			</tr>
		     <tr>
				<td colspan="2"><strong>Desired Qualification:</strong>
			                	<s:property id="desiredQualify" value="sd.desiredQualify" />
				<td>
					<strong>Organizing body:</strong>
				                <s:property id="organizer" value="sd.organizer" />
				</td>
			</tr>
			 <tr>
				<td colspan="2">
					<strong>Location:</strong>
			                	 <s:property id="location" value="sd.location" />
				</td>
				<td>
					<strong>Country:</strong>
				                <s:property id="country" value="sd.country" />
				</td>
			</tr>
			<tr>
			     <td>
			     	<strong>Course Duration:</strong> <s:property id="duration" value="sd.duration" />
			     </td>
			     <td>
			        <strong>Start date:</strong>
				                <fmt:formatDate value="${sd.startDate}" type="both" pattern="dd/MM/yyyy" timeZone="${timeZone}" />
			      </td>
			      <td>
			      		<strong>End date:</strong>
				                <fmt:formatDate value="${sd.endDate}" type="both" pattern="dd/MM/yyyy" timeZone="${timeZone}" />
				  </td>
			</tr>
		     <tr>
				<td colspan="3">       
		            <h3>Course relevance- please complete the following section in detail</h3>
		        </td>
		     </tr>
		     <tr>
				<td colspan="3">
					<strong>Purpose of the application (Describe the reasons/need to participate in the issues or problem to be addressed):</strong>
			                	<s:property id="purpose" value="sd.purpose" />     
			    </td>
			 </tr>
		     <tr>
				<td colspan="3">       
		           <strong>Objectives of the course applied:</strong>
			                	<s:property id="objectives" value="sd.objectives" />     
			 	</td>
			 </tr>
		     <tr>
				<td colspan="3">  
		            <strong>How does this course meet your professional needs:</strong>
			                	<s:property id="professionalNeeds" value="sd.professionalNeeds" />     
		      	</td>
			 </tr>
		     <tr>
				<td colspan="3">        		            
		            <strong>How do you intend to use your new skills after the completion of the course:</strong>
			                	<s:property id="completion" value="sd.completion" />     
			    </td>
			 </tr>
		     <tr>
				<td colspan="3">  
		            <strong>State how this course would bring added value to the Unit/IITA:</strong>
			                	<s:property id="addedValue" value="sd.addedValue" />     
			     </td>
			 </tr>
		     <tr>
				<td colspan="3">  
		            <h3>SECTION B- COST IMPLICATION FOR THE COURSE</h3>
		            <h4>Estimated Cost ($):</h4>
		      	</td>
			 </tr>
		     <tr>
				<td>  
		            <strong>Tuition fee:</strong>
			                	<s:property id="tuitionFee" value="sd.tuitionFee" />
				</td>
				<td colspan="2">
					<strong>Visa fee:</strong>
				                <s:property id="visaFee" value="sd.visaFee" />
				 </td>
			</tr>
			  <tr>
			  	    <td>
						<strong>Flight and shuttle fee:</strong>
			                	<s:property id="flightShuttleFee" value="sd.flightShuttleFee" />
				    </td>
					<td colspan="2">
						<strong>Per Diem:</strong>
				                <s:property id="perDiem" value="sd.perDiem" />
				    </td>
			  </tr>      
			  <tr>
			  	    <td>
			  	    	<strong>Others (specify):</strong>
			                	<s:property id="otherFees" value="sd.otherFees" />
				    </td>
					<td colspan="2">
						<strong>Total:</strong>
				                <s:property id="totalAmt" value="sd.total" />
				    </td>
				</tr>
			    <tr>
			    	<td>
			    		<strong>Total amount request:</strong>
				                <s:property id="totalAmtRequest" value="sd.totalAmtRequest" />
				    </td>
					<td colspan="2">
						<strong>State other sources of funding available to you CC or PA:</strong>
			                	<s:property id="otherFundingSource" value="sd.otherFundingSource" />     
			        </td>
			     </tr>
			     <s:if test="sd.status==@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@SUBMITTED">
				     <tr>
						<td colspan="3">
					     	<s:include value="/WEB-INF/jsp/staff/supervisor-details.jsp"></s:include>
				        </td>
				     </tr>
			     </s:if>		        
			     <tr>
					<td colspan="3">
			            <h4>Note:  Maximum support for Talent Grant is $4000</h4>
			            <hr />
					</td>
				</tr>
				<tr>
					<td colspan="3">
					</td>
				</tr>
				<s:if test="sd.status==@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@SUBMITTED">
					<tr>
						<td colspan="3">
				            <s:include value="/WEB-INF/jsp/include/staffapplication-actionlog.jsp"></s:include>
				        </td>
				    </tr>
			    </s:if>
			    <tr>
					<td colspan="3">
					</td>
				</tr>
				<s:if test="sd.evaluation.evaluationStatus==@org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation$EVALUATIONSTATUS@FINALIZED">
					<tr>
						<td colspan="3">
				            <s:include value="/WEB-INF/jsp/staff/evaluation-details.jsp"></s:include>
				        </td>
				    </tr>
			    </s:if>
				<s:elseif test="sd.evaluationDue==true">
					<tr>
						<td colspan="3">
							<h3>Feedback by Applicant (After Training)</h3>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<h4><em>No evaluation filed by applicant!</em></h4>
						</td>
					</tr>
				</s:elseif>
	    </table>
	</div>
</div>
</body>
</html>