<%@ include file="/common/taglibs.jsp"%>
<%-- <%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>

<html lang="en">
<head>
    <title>Staff Training Application Form</title>
    <style type="text/css">
		.singleColumn{ padding-left: 5px; font-weight:normal;}
		.lr{float:left; width:100%}
	</style>
</head>
<body>
<div class="pull-right">
<s:form method="post" name="staffForm" namespace="/staff" action="index">
	<s:submit value="Go to list!" cssClass="btn btn-success" cssStyle="align: right" />
</s:form>
</div>
<div class="container-fluid">
<h2>Reference Number: <s:property value="staffDev.referenceNumber" /> (<s:property value="staffDev.owner.fullName" />)</h2>
	<div class="notice">
		<p>
			<strong>Agreement: </strong>Please read carefully the announcement criteria and instructions before you submit your form. Failure to adhere strictly may lead to disqualification. Make sure you attach the course description of the proposed course before submission.
		</p>
	</div>

	<div class=" col col-sm-9">
	
	
	<div><em>* <font style="color:#ff0000">means mandatory fields</font></em></div>
	
	<div class="col col-sm-12">
	<s:form id="processdata" namespace="/staff" action="save" method="post">
	<s:if test="staffDev!=null">
		<s:hidden name="id" value="%{staffDev.id}" />
	</s:if>
	<table class="inputform">
	    <colgroup>
				<col width="200px" />
				<col />
			</colgroup>
	        <tr>
	            <td></td>
	            <td>
	            	<s:if test="staffDev!=null && staffDev.status==@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@NEW">
	           			<s:submit cssClass="btn btn-primary pull-right" action="save!apply" value="Submit Form" onclick="if(confirm('Submit your application form anyway?')){return true;}else{return false;}" />
	           		</s:if>
	           		<s:submit cssClass="btn btn-primary pull-right" value="Continue Editing" />
	            </td>
	        </tr>
	</table>

		<h3>SECTION A:- TO BE COMPLETED BY APPLICANT</h3>
	    <table id="locTable" class="table">
	    	<tr>
				<td>
					<div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="lastname" class="col-xs-6"><strong>Last Name: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control" id="lastname" name="staffDev.lastName" value="%{staffDev.lastName}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="firstname" class="col-xs-6"><strong>First Name: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control" id="firstname" name="staffDev.firstName" value="%{staffDev.firstName}" />
				            </div>
				        </div>
			        </div>
			        
			        <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="middlename" class="col-xs-6"><strong>Middle Name:</strong></label>
				                <s:textfield cssClass="form-control" id="middlename" name="staffDev.middleName" value="%{staffDev.middleName}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="maidenname" class="col-xs-6"><strong>Maiden Name:</strong></label>
				                <s:textfield cssClass="form-control" id="maidenname" name="staffDev.maidenName" value="%{staffDev.maidenName}" />
				            </div>
				        </div>
			        </div>
			        
			        <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="designation" class="col-xs-6"><strong>Designation: <font style="color:#ff0000">*</font></strong></label>
				                <s:textarea cssClass="form-control" id="designation" name="staffDev.designation" value="%{staffDev.designation}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="payGrade" class="col-xs-6"><strong>PG/IRS PG: <font style="color:#ff0000">*</font></strong></label>
				            	<s:select cssClass="form-control" id="payGrade" name="staffDev.payGrade" list="#{'01':'01','02':'02',
			'03':'03','04':'04','05':'05','06':'06','07':'07','08':'08','09':'09','10':'10','11':'11','12':'12','13':'13','14':'14','15':'15','IRS':'IRS'}" value="%{staffDev.payGrade}" emptyOption="" />
				            </div>
				        </div>
			        </div>
		            
		            
		            <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="unit" class="col-xs-12"><strong>Unit/Project: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control" id="unit" name="staffDev.unit" value="%{staffDev.unit}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="directorate" class="col-xs-6"><strong>Directorate: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control" id="directorate" name="staffDev.directorate" value="%{staffDev.directorate}" />
				            </div>
				        </div>
			        </div>
		            
					<div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="dutyStation" class="col-xs-6"><strong>Duty Station: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control" id="dutyStation" name="staffDev.dutyStation" value="%{staffDev.dutyStation}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="hub" class="col-xs-6"><strong>Hub: <font style="color:#ff0000">*</font></strong></label>
				            	<s:select cssClass="form-control" name="staffDev.hub" list="#{'Western Africa':'Western Africa','Eastern Africa':'Eastern Africa',
			'Central Africa':'Central Africa','Southern Africa':'Southern Africa'}" value="%{staffDev.hub}" />
				            </div>
				        </div>
			        </div>
		            
		            <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-4">
				                <label for="gender" class="col-xs-12"><strong>Gender: <font style="color:#ff0000">*</font></strong></label>
				                <s:radio id="gender" name="staffDev.gender" value="%{staffDev.gender}" list="#{'Female':'Female','Male':'Male'}" />
				            </div>
				            <div class="col-xs-12 col-md-4">
				                <label for="supervisor" class="col-xs-12"><strong>Supervisor: <font style="color:#ff0000">*</font></strong></label>
								<s:select id="supervisor" cssClass="form-control" name="supervisor" value="%{staffDev.supervisor.id}" emptyOption="true" list="supervisors" listKey="id" listValue="%{lastName + ', ' + firstName}" />
				            </div>
				            <div class="col-xs-12 col-md-4">
				                <label for="hod" class="col-xs-12"><strong>Head of Unit: <font style="color:#ff0000">*</font></strong></label>
								<s:select id="hod" cssClass="form-control" name="hod" value="%{staffDev.hod.id}" emptyOption="true" list="hods" listKey="id" listValue="%{lastName + ', ' + firstName}" />
				            </div>
				        </div>
			        </div>

	
		            <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="highestQualify" class="col-xs-12"><strong>Highest Educational qualification: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control" id="highestQualify" name="staffDev.highestQualify" value="%{staffDev.highestQualify}" />     
			                </div>
		                </div>
		            </div>
		            
		            <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="jobDescription" class="col-xs-12"><strong>List briefly your job description: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textarea cssClass="form-control" id="jobDescription" name="staffDev.jobDescription" value="%{staffDev.jobDescription}" />     
			                </div>
		                </div>
		            </div>

		            <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-12">
				                <label for="trainingType" class="col-xs-12"><strong>Type of Training: <font style="color:#ff0000">*</font></strong></label>
				                <s:radio id="trainingType" name="staffDev.trainingType" value="%{staffDev.trainingType}"
				                 list="#{'Talent (Internal)':'Talent (Internal)','Short term course (Internal)':'Short term course (Internal)',
				                 'Mentoring/Coaching (Internal)':'Mentoring/Coaching (Internal)',
				                 'Short term course (External)':'Short term course (External)',
				                 'Long term course (External)':'Long term course (External)',
				                 'Attendance - Conference, Workshop (External)':'Attendance - Conference, Workshop (External)',
				                 'Visit (External)':'Visit (External)'}" cssClass="form-radio" />
				            </div>
				        </div>
			        </div>
			        			        
			        <h3>Course details</h3>
			        
			        <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="applyCourse" class="col-xs-12"><strong>Course applying for: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control" id="applyCourse" name="staffDev.applyCourse" value="%{staffDev.applyCourse}" />     
			                </div>
		                </div>
		            </div>
		            
		            <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="desiredQualify" class="col-xs-12"><strong>Desired Qualification: <font style="color:#ff0000">*</font></strong></label>
			                	<s:select cssClass="form-control" id="desiredQualify" name="staffDev.desiredQualify" value="%{staffDev.desiredQualify}" emptyOption="true" 
			list="#{'ND':'ND','HND':'HND','BSc':'BSc','MSc':'MSc','PhD':'PhD','Certificate of Participation':'Certificate of Participation'}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="organizer" class="col-xs-6"><strong>Organizing body: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control" id="organizer" name="staffDev.organizer" value="%{staffDev.organizer}" />
				            </div>
				        </div>
			        </div>
			        
			        <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="location" class="col-xs-12"><strong>Location: <font style="color:#ff0000">*</font></strong></label>
			                	 <s:textarea cssClass="form-control" id="location" name="staffDev.location" value="%{staffDev.location}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="country" class="col-xs-6"><strong>Country: <font style="color:#ff0000">*</font></strong></label>
				                <s:select cssClass="form-control" emptyOption="true" id="country" value="%{staffDev.country}" name="staffDev.country" 
                list="#{'Afghanistan':'Afghanistan','Åland Islands':'Åland Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','Côte d`Ivoire':'Côte d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Curaçao':'Curaçao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','Réunion':'Réunion','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barthélemy':'Saint-Barthélemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}"
 />
				            </div>
				        </div>
			        </div>

			        
			        
			        <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="startdate" class="col-xs-12"><strong>Start date: <font style="color:#ff0000">*</font></strong></label>
			                	<iita:datepicker cssClass="form-control" id="startdate" format="dd/MM/yyyy" name="staffDev.startDate" value="%{staffDev.startDate}" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="enddate" class="col-xs-12"><strong>End date: <font style="color:#ff0000">*</font></strong></label>
				                <iita:datepicker cssClass="form-control" id="enddate" format="dd/MM/yyyy" name="staffDev.endDate" value="%{staffDev.endDate}" />
				            </div>
				        </div>
			        </div>
		            <div class="clearfix">&nbsp;</div>
		            
		            <h3>Course relevance- please complete the following section in detail</h3>
					<div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="purpose" class="col-xs-12"><strong>Purpose of the application (Describe the reasons/need to participate in the issues or problem to be addressed): <font style="color:#ff0000">*</font></strong></label>
			                	<s:textarea cssClass="form-control" id="purpose" name="staffDev.purpose" value="%{staffDev.purpose}" />     
			                </div>
		                </div>
		            </div>
		            
		            <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="objectives" class="col-xs-12"><strong>Objectives of the course applied: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textarea cssClass="form-control" id="objectives" name="staffDev.objectives" value="%{staffDev.objectives}" />     
			                </div>
		                </div>
		            </div>
		            
		            <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="professionalNeeds" class="col-xs-12"><strong>How does this course meet your professional needs: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textarea cssClass="form-control" id="professionalNeeds" name="staffDev.professionalNeeds" value="%{staffDev.professionalNeeds}" />     
			                </div>
		                </div>
		            </div>
		            		            
		            <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="completion" class="col-xs-12"><strong>How do you intend to use your new skills after the completion of the course: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textarea cssClass="form-control" id="completion" name="staffDev.completion" value="%{staffDev.completion}" />     
			                </div>
		                </div>
		            </div>
		            		            
		            <div class="row">
		            	<div class="form-group">
			                <div class="col-xs-12 col-md-12">
			                	<label for="addedValue" class="col-xs-12"><strong>State how this course would bring added value to the Unit/IITA: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textarea cssClass="form-control" id="addedValue" name="staffDev.addedValue" value="%{staffDev.addedValue}" />     
			                </div>
		                </div>
		            </div>
		            
		            <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="mandateCrop" class="col-xs-12"><strong>Mandate Crop: <font style="color:#ff0000">*</font></strong></label>
				                <s:select id="mandateCrop" name="staffDev.mandateCrop" value="%{staffDev.mandateCrop}"
				                 list="#{'Banana':'Banana',
				                 'Cassava':'Cassava',
				                 'Cocoa':'Cocoa',
				                 'Cowpea':'Cowpea',
				                 'Grain Legumes':'Grain Legumes',
				                 'Maize':'Maize',
				                 'Plaintain':'Plantain',
				                 'Soybean':'Soybean',
				                 'Yam':'Yam',
				                 'Not applicable':'Not applicable'}" cssClass="form-control" />
				            </div>				            
				            <div class="col-xs-12 col-md-6">
				                <label for="researchSubject" class="col-xs-12"><strong>Research Subject: <font style="color:#ff0000">*</font></strong></label>
				                <s:select id="researchSubject" name="staffDev.researchSubject" value="%{staffDev.researchSubject}"
				                 list="#{'Genetic Improvement':'Genetic Improvement',
				                 'Plant Health and Production':'Plant Health and Production',
				                 'Natural Resource Management':'Natural Resource Management',
				                 'Socioeconomy and Agribusiness':'Socioeconomy and Agribusiness',
				                 'Food Science':'Food Science',
				                 'Research Method':'Research Method',
				                 'Capacity Development':'Capacity Development',
				                 'Not applicable':'Not applicable'}" cssClass="form-control" />
				            </div>
				        </div>
			        </div>
		            
		            <h3>SECTION B- COST IMPLICATION FOR THE COURSE</h3>
		            <div class="row"><font style="color:#ff0000"><em>Noteworthy:</em> Enter 0 in below fields if they are not applicable</font></div>
		            <div class="row">		            	
						<div class="form-group">
							<h4>Estimated Cost ($):</h4>
							<div class="col-xs-12 col-md-6">
				                <label for="tuitionFee" class="col-xs-12"><strong>Tuition fee: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control numeric-input" id="tuitionFee" name="staffDev.tuitionFee" value="%{staffDev.tuitionFee}" onblur="return formatMoney(this.value,2);" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="visaFee" class="col-xs-6"><strong>Visa fee: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control numeric-input" id="visaFee" name="staffDev.visaFee" value="%{staffDev.visaFee}" onblur="return formatMoney(this.value,2);" />
				            </div>
				        </div>
			        </div>
			        
			        <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="flightShuttleFee" class="col-xs-12"><strong>Flight and shuttle fee: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control numeric-input" id="flightShuttleFee" name="staffDev.flightShuttleFee" value="%{staffDev.flightShuttleFee}" onblur="return formatMoney(this.value,2);" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="perDiem" class="col-xs-6"><strong>Per Diem: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control numeric-input" id="perDiem" name="staffDev.perDiem" value="%{staffDev.perDiem}" onblur="return formatMoney(this.value,2);" />
				            </div>
				        </div>
			        </div>
			        
			        <div class="row">
						<div class="form-group">
							<div class="col-xs-12 col-md-6">
				                <label for="otherFees" class="col-xs-12"><strong>Others (specify): <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control numeric-input" id="otherFees" name="staffDev.otherFees" value="%{staffDev.otherFees}" onblur="return formatMoney(this.value,2);" />
				            </div>
				            <div class="col-xs-12 col-md-6">
				                <label for="totalAmt" class="col-xs-6"><strong>Total:</strong></label>
				                <s:label cssClass="form-control numeric-input" id="totalAmt" name="totalAmt" value="%{staffDev.total}" />
				            </div>
				        </div>
			        </div>
			        
			         <div class="row">
		            	<div class="form-group">
		            		<div class="col-xs-12 col-md-6">
				                <label for="totalAmtRequest" class="col-xs-12"><strong>Total amount request: <font style="color:#ff0000">*</font></strong></label>
				                <s:textfield cssClass="form-control numeric-input" id="totalAmtRequest" name="staffDev.totalAmtRequest" value="%{staffDev.totalAmtRequest}" />
				            </div>
			                <div class="col-xs-12 col-md-6">
			                	<label for="otherFundingSource" class="col-xs-12"><strong>State other sources of funding available to you CC or PA: <font style="color:#ff0000">*</font></strong></label>
			                	<s:textfield cssClass="form-control" id="otherFundingSource" name="staffDev.otherFundingSource" value="%{staffDev.otherFundingSource}" />     
			                </div>
		                </div>
		            </div>
		            <h4>Note:  Maximum support for Talent Grant is $4000</h4>
		            <hr />
		            <s:if test="staffDev.status==@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@SUBMITTED && staffDev.supervisor==user">
		            	<s:include value="/WEB-INF/jsp/staff/supervisor-form.jsp"></s:include>
		            </s:if>
				</td>
			</tr>
	    </table>
	    
	    <table class="inputform">
		    <colgroup>
					<col width="200px" />
					<col />
				</colgroup>
		        <tr>
		            <td></td>
		            <td>
		            	
		            	<s:if test="staffDev!=null && staffDev.status==@org.iita.trainingunit.staff.model.StaffDevelopment$STATUS@NEW">
		           			<s:submit cssClass="btn btn-primary pull-right" action="save!apply" value="Submit Form" onclick="if(confirm('Submit your application form anyway?')){return true;}else{return false;}" />
		           		</s:if>
		           		<s:submit cssClass="btn btn-primary pull-right" value="Continue Editing" />
		            </td>
		        </tr>
		</table>
		</s:form>
	    </div>
		
	</div>
	
	<div class="col col-sm-3">
			<s:if test="staffDev.documents.size>0">
				<h2>Application Supporting Documents</h2>
				
				<ul class="file-list">
					<s:iterator value="staffDev.documents">
						<li class="file"><s:include value="/WEB-INF/jsp/document/entitydocument-staffdev-quick.jsp" /></li>
					</s:iterator>
				</ul>
			</s:if>
			
			<s:if test="user==staffDev.owner">
				<p>Attach document to application:</p>
				<iita:fileupload action="staffdevelopment-document!upload" value="Upload files" queryParams="entityId=${staffDev.id}" />
			</s:if>
		</div>
		
		<s:if test="staffDev.actionLog!=null">
		<div class="col col-sm-3">
			<s:include value="/WEB-INF/jsp/staff/actionlog.jsp"></s:include>
		</div>
		</s:if>
</div>
	
	
	<div class="clearfix">&nbsp;</div>

<script type="text/javascript">
//To set it up as a global function:
function formatMoney(number, places, symbol, thousand, decimal) {
	/*
	number = number || 0;
	places = !isNaN(places = Math.abs(places)) ? places : 2;
	symbol = symbol !== undefined ? symbol : "";
	thousand = thousand || ",";
	decimal = decimal || ".";
	var negative = number < 0 ? "-" : "",
	    i = parseInt(number = Math.abs(+number || 0).toFixed(places), 10) + "",
	    j = (j = i.length) > 3 ? j % 3 : 0;
	*/
	
	//Add up total
	var tuition = Math.round(document.getElementsByName('staffDev.tuitionFee').value*1);
	var visa = Math.round(document.getElementsByName('staffDev.visaFee').value*1);
	var flight = Math.round(document.getElementsByName('staffDev.flightShuttleFee').value*1);
	var perdiem = Math.round(document.getElementsByName('staffDev.perdiem').value*1);
	var other = Math.round(document.getElementsByName('staffDev.otherFees').value*1);
	
	document.getElementsByName("totalAmt").innerHTML = "$" + (tuition + visa + flight + perdiem + other);
	
	return true;
	//return symbol + negative + (j ? i.substr(0, j) + thousand : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "1" + thousand) + (places ? decimal + Math.abs(number - i).toFixed(places).slice(2) : "");
}

</script>
</body>
</html>