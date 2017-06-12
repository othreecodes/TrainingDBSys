<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>External Trainings</title>
</head>
<body>


	<div class="container-fluid">
		<s:form id="" namespace="/" action="apply" method="post">
			<s:if test="id!=null">
				<s:hidden name="id" value="%{training.id}" />
				<s:if test="">
					<s:hidden name="" value="%{}" />
				</s:if>
			</s:if>

			<div>
				<em>* <font style="color: #ff0000">means mandatory
						fields</font></em>
			</div>
		
		

			<div>
				<div>
					<h3>Registration Form (External Training)</h3>


					<table id="" class="table">
						<tr>
							<td>
								<!-- title.-->
								<div class="row">
									<div class="form-group">
										<div class="col-xs-12 col-md-3">
											<label for="lastname" class="col-xs-6"><strong>Title
													(Dr., Mr., Mrs., etc.):<font style="color: #ff0000">*</font>
											</strong></label>
											<s:textfield cssClass="form-control" id="title" name="training.title"
												value="%{training.title}" />
										</div>
									</div>
								</div> <!-- Surname.-->
								<div class="row">
									<div class="form-group">
										<div class="col-xs-12 col-md-6">
											<label for="Surname" class="col-xs-6"><strong>Surname:<font
													style="color: #ff0000">*</font></strong></label>
											<s:textfield cssClass="form-control" id="Surname" name="training.lastName"
												value="%{training.lastName}" />
										</div>

										<!-- First name-->
										<div class="col-xs-12 col-md-6">
											<label for="firstname" class="col-xs-6"><strong>First
													Name: <font style="color: #ff0000">*</font>
											</strong></label>
											<s:textfield cssClass="form-control" id="firstname" name="training.firstName"
												value="%{training.firstName}" />
										</div>
									</div>
								</div>

								<div class="row">
									<div class="form-group">
										<!-- Gender.-->
										<div class="col-xs-12 col-md-6">
											<label for="gender" class="col-xs-6"><strong>Gender:<font
													style="color: #ff0000">*</font></strong></label>
			
				           	  				  <s:select cssClass="form-control"
				           	  				   id="gender" 
				           	  				   emptyOption="true" 
				           	  				   value="%{training.gender}" 
				           	  				    name="training.gender" 
	       								         list="#{'Female':'FEMALE','Male':'MALE'}" />
										</div>



										<!--Nationality-->
										<div class="col-xs-12 col-md-6">
											<label for="firstname" class="col-xs-6"><strong>Nationality:
													<font style="color: #ff0000">*</font>
											</strong></label>
												<s:select cssClass="form-control" id="Nationality" emptyOption="true" value="%{training.Country}" name="training.country" 
	             						   list="#{'Afghanistan':'Afghanistan','Åland Islands':'Åland Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','Côte d`Ivoire':'Côte d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Curaçao':'Curaçao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','Réunion':'Réunion','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barthélemy':'Saint-Barthélemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" />
	              
												
										</div>
									</div>
								</div>



								<div class="row">
									<!-- Job Title.-->
									<div class="col-xs-12 col-md-12">
										<label for="jobtitle" class="col-xs-6"><strong>Job
												Title: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="jobtitle" name="training.jobTitle"
											value="%{training.jobTitle}" />
									</div>
								</div>

								<div class="row">
									<!-- Office Address.-->
									<div class="col-xs-12 col-md-12">
										<label for="Organization" class="col-xs-6"><strong>Organization:<font
												style="color: #ff0000">*</font></strong></label>
										<s:textfield cssClass="form-control" id="Organisation"
											name="training.organization" value="%{training.organization}" />
									</div>
								</div>


								<div class="row">
									<!-- Office Address.-->
									<div class="col-xs-12 col-md-12">
										<label for="OfficeAddress" class="col-xs-6"><strong>Office
												Address: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="OfficeAddress"
											name="training.officeAddress" value="%{training.officeAddress}" />
									</div>
								</div>


								<div class="row">
									<!-- Phone.-->
									<div class="col-xs-12 col-md-12">
										<label for="Phone" class="col-xs-6"><strong>Phone
												(preferable Mobile):<font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="Phone" name="training.phone"
											value="%{training.phone}" />
									</div>
								</div>


								<div class="row">
									<!-- E-mail Address: .-->
									<div class="col-xs-12 col-md-12">
										<label for="Email" class="col-xs-6"><strong>E-mail
												Address: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="Email" name="training.email"
											value="%{training.email}" />
									</div>
								</div>



								<div class="row">
									<!-- Most recent Education: .-->
									<div class="col-xs-12 col-md-12">
										<label for="recentEduc" class="col-xs-6"><strong>Most
												recent Education: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="recentEduc" name="training.educationalInfo"
											value="%{training.educationalInfo}" />
									</div>
								</div>


								<div class="row">
									<!-- Relevant areas of interest .-->
									<div class="col-xs-12 col-md-12">
										<label for="interest" class="col-xs-6"><strong>Relevant
												areas of interest: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="interest" name="training.RelevantAreasInterest"
											value="%{training.RelevantAreasInterest}" />
									</div>
								</div> <!-- Please tell us what you hope to gain from this course.-->
								<div class="row">
									<div class="form-group">
										<div class="col-xs-12 col-md-12">
											<label for="gainfromthiscourse" class="col-xs-12"><strong>Please
													tell us what you hope to gain from this course.</label>
											<s:textarea cssClass="form-control" id="" name="training.gaintFromCourse" value="%{training.gaintFromCourse}" />
										</div>
									</div>
								</div>


								<div class="row">
									<!-- Name in Full:  .-->

									<div class="col-xs-12 col-md-12">
										<label for="fullName" class="col-xs-6"><strong>Name
												in Full: : <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="fullName" name="training.fullName"
											value="%{training.fullName}" />
									</div>
									<div>
										<em>* <font style="color: #ff0000">(As you would
												like it to appear in your certificate)</font></em>
									</div>

								</div>
								<!-- Signature.-->
	

							</td>
						</tr>
					</table>

					<div>
						<ul>
							<li>Registration is subject to confirmation of received
								payment, please send payment confirmation to <font
								style="color: #ff0000">*IITA-TrainingUnit@cgiar.org</font>
							</li>
							<li>Please send completed registration form to <font
								style="color: #ff0000">*IITA-TrainingUnit@cgiar.org</font>
							</li>
							<li>IITA reserves the right to cancel a course 4 weeks to
								the start date of the course</li>
						</ul>
					</div>





				</div>
				<table class="inputform">
					<colgroup>
						<col width="200px" />
						<col />
					</colgroup>
					<tr>
						<td></td>
						<td> 
								<s:submit cssClass="btn btn-primary pull-right" action="apply"
									value="Submit Form"
									onclick="if(confirm('Submit your Registeration form ?')){return true;}else{return false;}" />
									
					
					</tr>
				</table>
			</div>
		</s:form>
		<div class="clearfix">&nbsp;</div>
	</div>

</body>
</html>