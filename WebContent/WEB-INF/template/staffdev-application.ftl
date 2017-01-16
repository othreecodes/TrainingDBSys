<table class="inputform">
		<colgroup>
			<col width="200px" />
			<col />
			<col width="200px" />
			<col />
		</colgroup>
		<tr><td colspan="4">SECTION A -TO BE COMPLETED BY APPLICANT</td></tr>
		
		<tr><td colspan="4"><strong>Personal Details</strong></td></tr>
		<tr>
			<td>Surname:</td>
			<td colspan="3">${staffDev.lastName!''}</td>
		</tr>
		<tr>
			<td>Given Name(s):</td>
			<td colspan="3">${staffDev.givenName!''}</td>
		</tr>
		<tr><td>Designation: </td><td>${staffDev.designation!''}</td>

			<td>PG:</td><td>${staffDev.payGrade!''}</td>
		</tr>
		<tr><td>Unit/Project: </td><td>${staffDev.unit!''}</td>

			<td>Directorate:</td><td>${staffDev.directorate!''}</td>
		</tr>
		<tr><td>Duty Station:</td><td>${staffDev.dutyStation!''}</td></tr>
		<tr><td>Hub:</td><td>${staffDev.hub!''}</td></tr>

		<tr>
			<td>Gender</td>
			<td>${staffDev.gender}</td>

			<td>Supervisor: </td><td>${staffDev.supervisor}</td>
		</tr>
		<tr><td>Highest Educational qualification:</td><td colspan="3">${staffDev.highestQualify!''}</td>
		</tr>
		<tr><td>List briefly your job description:</td><td colspan="3">${staffDev.jobDescription!''}</td>			
		</tr>
		<tr>
			<td>Type of training</td>
			<td colspan="3">${staffDev.trainingType!''}</td>
		</tr>

		<tr><td colspan="4">Course details</td></tr>
		<tr><td>Course applying for:</td><td colspan="3">${staffDev.applyCourse!''}</td>			
		</tr>
		<tr>
			<td>Desired Qualification:</td>
			<td>${desiredQualify!''}</td>

			<td>Organizing body:</td>
			<td>${staffDev.organizer!''}</td>
		</tr>

		</tr>
		<tr>
			<td valign="top" colspan="4">Location/Venue Information:</td>
		</tr>
		<tr>
			<td>Location:</td>
			<td>${staffDev.location!''}</td>

			<td>Country:</td>
			<td>${staffDev.country!''}</td>
		</tr>
		
		<#if staffDev.startDate??>
       		<tr>
       			<td colspan="2">Start date: ${staffDev.startDate?date}</td>
       			<td colspan="2"><#if staffDev.endDate??>End date: ${staffDev.endDate?date}</#if></td>
       		</tr>
		</#if>

		<tr>
			Course relevance- please complete the following section in detail
		</tr>
		<tr>
			<td colspan="4">1. Purpose of the application (Describe the reasons/need to
			participate in the training, with reference to issues or problems to
			be addressed):<br/>${staffDev.purpose!''}</td>
		</tr>
		<tr>
			<td colspan="4">2. Objectives of the course applied for:<br/>${staffDev.objectives!''}</td>
		</tr>

		<tr>
			<td colspan="4">3. How does this course meet your professional needs?<br/>${staffDev.professionalNeeds!''}</td>
		</tr>

		<tr>
			<td colspan="4">4. How do you intend to use your new skills after the
			completion of the course?<br/>${staffDev.completion!''}</td>
		</tr>

		<tr>
			<td colspan="4">5. State how this course will bring added value to the
			Unit/IITA?<br/>${staffDev.addedValue!''}</td>
		</tr>
		<tr>
			<td colspan="4">SECTION B - TO BE COMPLETED BY HEAD OF UNIT/SUPERVISOR</td>
		</tr>

		<tr>
			<td colspan="4">6. State why you support the applicant for this course:<br/>
			${staffDev.supportApplicant!''}</td
		</tr>
		<tr>
			<td colspan="4">7. Has replacement staff been organized for the applicant to
			attend this course?<br/>${staffDev.replacementStaff!''}</td>
		</tr>

		<tr>
			SECTION B - COST IMPLICATION FOR THE COURSE
		</tr>

		<tr>
			<td colspan="4">8. Estimated costs:</td>
		</tr>

		<tr>
			<td colspan="2">(i) Tuition fee: ${staffDev.tuitionFee}</td>
			<td colspan="2">(ii) Visa fees: ${staffDev.visaFee}</td>
		</tr>

		<tr>
			<td colspan="2">(iii) Flight and shuttle costs: ${staffDev.flightShuttleFee}</td>
			<td colspan="2">(iv) Per diem: ${staffDev.perDiem}</td>
		</tr>

		<tr>
			<td colspan="2">(v) Others (specify): ${staffDev.otherFees}</td>
			<td colspan="2">(vi) Total: ${staffDev.total}</td>
		</tr>

		<tr>
			<td colspan="4">9. Total Amount Request: ${staffDev.totalAmtRequest}</td>
		</tr>
		<tr>
			<td colspan="4">State other sources of funding available to you CC or PA:  ${staffDev.otherFundingSource}</td>
		</tr>
		<tr>
			<td colspan="4"><strong>Note: Maximum support for Talent Grant is $4000</strong></td>
		</tr>
		<tr>
			<td colspan="4">
				<#include "staffactionlog.ftl">
			</td>
		</tr>

	</table>