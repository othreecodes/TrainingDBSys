<%@ include file="/common/taglibs.jsp"%>

<h3>PROPOSED ACADEMIC PROGRAM</h3>
<div>
	<div>
	    <table class="inputform">
	    <colgroup>
	    	<col />
			<col />
			<col />
		</colgroup>
		<tr>
			<td colspan="3"><em>Degree:*</em>
			<s:radio name="cdoGraduateApplication.degree" value="%{cdoGraduateApplication.degree}" 
			list="@org.iita.trainingunit.applications.model.GraduateResearchTraining$DEGREE@values()" 
			listValue="%{getText('graduatetraining.degree.'+toString())}" /></td>
		</tr>
		<tr>
			<td colspan="2"><em>How did you hear about this program?:</em>
			<s:textarea name="cdoGraduateApplication.channelOfAwareness" value="%{cdoGraduateApplication.channelOfAwareness}" /></td>
		</tr>
		<tr>
			<td><em>Present University:*</em></td>
			<td colspan="2"><em>Proposed Research Theme:*</em></td>
		</tr>
		<tr>
			<td><s:textfield name="cdoGraduateApplication.presentUniversity" value="%{cdoGraduateApplication.presentUniversity}" /></td>
			<td colspan="2"><s:textfield name="cdoGraduateApplication.proposedResearchTheme" value="%{cdoGraduateApplication.proposedResearchTheme}" /></td>
		</tr>
		<tr>
			<td><em>University Supervisor(s):*</em></td>
			<td><em>University Supervisor(s) Email:*</em></td>
			<td><em>Name of IITA Supervisor(s):*</em></td>
		</tr>
		<tr>
			<td><s:textfield name="cdoGraduateApplication.nameOfUniversitySupervisor" value="%{cdoGraduateApplication.nameOfUniversitySupervisor}" /></td>
			<td><s:textfield name="cdoGraduateApplication.emailOfUniversitySupervisor" value="%{cdoGraduateApplication.emailOfUniversitySupervisor}" /></td>
			<td><s:textfield name="cdoGraduateApplication.nameOfIITASupervisor" value="%{cdoGraduateApplication.nameOfIITASupervisor}" /></td>
		</tr>		
		
	    </table>
	    
	    <div>
		    <table class="inputform" id="nextofkinTable">
		    <colgroup>
				<col />
				<col />
			</colgroup>
			<tr>
				<td><em>Research Location(s):</em></td>
				<td><em>Expected Duration:</em></td>
			</tr>
			<tr>
				<td><s:textfield name="cdoGraduateApplication.researchLocation" value="%{cdoGraduateApplication.researchLocation}" /></td>
				<td><s:textfield name="cdoGraduateApplication.expectedDuration" value="%{cdoGraduateApplication.expectedDuration}" /></td>
			</tr>
		    </table>
		</div>
		
		<div>
		    <table class="inputform" id="nextofkinTable">
		    <colgroup>
				<col width="100px" />
				<col width="100px" />
				<col />
			</colgroup>
			<tr>
				<td><em>Start Date:</em></td>
				<td><em>End Date:</em></td>
				<td />
			</tr>
			<tr>
				<td><iita:datepicker name="cdoGraduateApplication.startDate" value="%{cdoGraduateApplication.startDate}" cssClass="datepicker" /></td>
				<td><iita:datepicker name="cdoGraduateApplication.endDate" value="%{cdoGraduateApplication.endDate}" cssClass="datepicker" /></td>
			</tr>
		    </table>
		</div>
		
		<!--<s:include value="/WEB-INF/jsp/include/degrees/languagespoken.jsp" />-->
		<!-- 
		<div>
		    <table class="inputform" id="nextofkinTable">
		    <colgroup>
				<col width="200px" />
				<col />
			</colgroup>
			<tr>
				<td><em>Support Required*</em></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<s:radio name="cdoGraduateApplication.typeOfSupport" value="%{cdoGraduateApplication.typeOfSupport}" 
			list="@org.iita.trainingunit.applications.model.SupportType$SUPPORTTYPE@values()" 
			listValue="%{getText('graduatetraining.supporttype.'+toString())}" />
				</td>
			</tr>
		    </table>
		</div>
		
		<div>
		    <table class="inputform" id="nextofkinTable">
		    <colgroup>
				<col width="200px" />
				<col />
			</colgroup>
			<tr>
				<td><em>Funding Source*</em></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<s:radio name="cdoGraduateApplication.fundingSource" value="%{cdoGraduateApplication.fundingSource}" 
					list="#{'Employer':'Employer','Donor':'Donor','Self':'Self','Joint':'Joint','IITA Core':'IITA Core','IITA Project':'IITA Project'}"
					 />
				</td>
			</tr>
		    </table>
		</div>
		 -->
	</div>
</div>