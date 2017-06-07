<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User of Facilities</title>
</head>
<body>

	<div class="container-fluid">
		<s:form id="" namespace="/" action="apply" method="post">
			<s:if test="id!=null">
				<s:hidden name="postTraining.id" value="%{postTraining.id}" />
				<s:if test="">
					<s:hidden name="" value="%{}" />
				</s:if>
			</s:if>

			<div>
				<em>* <font style="color: #ff0000">means mandatory
						fields</font></em>
			</div>

			<table class="inputform">
				<colgroup>
					<col width="200px" />
					<col />
				</colgroup>
				<tr>
					<td></td>
					<td><s:if test="">
							<s:submit cssClass="btn btn-primary pull-right"
								action="evaluation!finalized" value="Finalize Registeration"
								onclick="if(confirm('Submit your application form anyway?')){return true;}else{return false;}" />
						</s:if> <s:submit cssClass="btn btn-primary pull-right"
							value="Continue Editing" /></td>
				</tr>
			</table>



			<h2 class="text-center">
				<strong> Application Form for Use of IITA Research
					Facilities</strong>
			</h2>

			<br>
			<br>
			<br>


			<div class="row">
				<div class="col-md-8">
					<p>
						<strong>Instructions:</strong> Completed application forms should
						be accompanied by a letter of interest, a letter of recommendation
						and permission from current head of institution, curriculum vitae,
						and a research proposal of not more than 2 pages.
					</p>
					<p>
						Fill in the shaded fields. Use the <em>TAB</em> key on the
						keyboard or your mouse to move between fields.
					</p>

					<p>
						<strong>Le formulaire peut être rempli soit en français,
							soit en anglais.</strong>
					</p>
				</div>
			</div>


			<!--------------------------------------- PART I - ADMINISTRATIVE INFORMATION  .------------------------------>
			<br>
			<br>
			<br>
			<h4 class="text-center">
				<strong>PART I - ADMINISTRATIVE INFORMATION </strong>
			</h4>

			<br>
			<h3>
				<strong>1. Personal </strong>
			</h3>

			<table id="" class="table table-stripped table-responsive">
				<tr>
					<div class="row">
						<div class="col-md-8">
							<label for="Surname" class=""><strong> Surname: <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Surname" name="Surname" value="%{.}" />
						</div>
	<br>

						<div class="col-md-4">
							<label for="gender" class=""><strong> Gender: <font
									style="color: #ff0000">*</font></strong> </label> <label class="radio-inline"
								for="Male"> <s:radio id="Gender" name="gender"
									value="%{Gender}" list="#{'MALE':''}" /> F
							</label> <label class="radio-inline" for="Female"> <s:radio
									id="Gender" name="Gender" value="%{Gender}" list="#{'MALE':''}" />
								M
							</label>


						</div>

					</div>
				</tr>

				<tr>
					<div class="row">
						<div class="col-md-6">
							<label for="gvname" class=""><strong> Given
									name(s)<font style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="gvname" name="gvname" value="%{.}" />
						</div>



   <div class="col-md-4">
			<label for="nationality" class="">Nationality:  *</label>
	        <s:select cssClass="form-control" id="nationality" emptyOption="true" value="%{cdoBioData.nationality}" name="cdoBioData.nationality" 
	                list="#{'Afghanistan':'Afghanistan','Åland Islands':'Åland Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','Côte d`Ivoire':'Côte d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Curaçao':'Curaçao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','Réunion':'Réunion','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barthélemy':'Saint-Barthélemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" />
		</div>



						<div class="col-md-2">
							
								<label for="dateOfBirth" class=""><strong>Date of
									birth: YYYY/MM/DD <font style="color: #ff0000">*</font>
							</strong></label>
        						<iita:datepicker id="dateOfBirth" name="" value="%{.}" cssClass="form-control datepicker" />
	`					</div>


					</div>
				</tr>
				<tr>
					<br>


					<legend>
						<font style="color: #d3d3d3">Correspondence address:</font>
					</legend>

					<div class="row">
						<div class="col-md-3">
							<label for="City" class=""><strong>City<font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="City" name="City" value="%{.}" />
						</div>
						<div class="col-md-2">
							<label for="State" class=""><strong>State <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="City" name="City" value="%{.}" />
						</div>
						

						<div class="col-md-4">
			<label for="nationality" class="">Country:  *</label>
	        <s:select cssClass="form-control" id="Country" emptyOption="true" value="%{.Country}" name="." 
	                list="#{'Afghanistan':'Afghanistan','Åland Islands':'Åland Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','Côte d`Ivoire':'Côte d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Curaçao':'Curaçao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','Réunion':'Réunion','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barthélemy':'Saint-Barthélemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}" />
		</div>




						<div class="col-md-3">
							<label for="Postal" class=""><strong>Postal code
									<font style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Postal" name="Postal" value="%{.}" />
						</div>
					</div>


					<div class="row">
						<div class="col-md-4">
							<label for="Email" class=""><strong>Email<font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Email" name="Email" value="%{.}" />
						</div>
						<div class="col-md-4">
							<label for="State" class=""><strong>Telephone <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Telephone" name="Telephone" value="%{.}" />
						</div>
						
						<div class="col-md-4">
							<label for="Cellular" class=""><strong>Cellular <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Cellular" name="Cellular" value="%{.}" />
						</div>
					</div>
					</fieldset>


				</tr>
				<br>
				<tr>
					<legend>
						<font style="color: #d3d3d3">Permanent address:</font>
					</legend>
					<div class="row">
						<div class="col-md-4">
							<label for="PCity" class=""><strong>City<font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="PCity" name="PCity" value="%{.}" />
						</div>
						<div class="col-md-4">
							<label for="PState" class=""><strong>State <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="PState" name="PState" value="%{.}" />
						</div>

						<div class="col-md-4">
							<label for="pcde" class=""><strong>Postal code
									<font style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="pcde" name="pcde" value="%{.}" />
						</div>
					</div>
					</fieldset>
				</tr>



				<br>

				<tr>

					<fieldset>
						<legend>
							<font style="color: #d3d3d3">Next of Kin:</font>
						</legend>
						<div class="row">
							<div class="col-md-4">
								<label for="nokname" class=""><strong>Name:<font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="nokname" name="nokname" value="%{.}" />
							</div>
							<div class="col-md-2">
								<label for="nokrel" class=""><strong>Relationship:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="nokrel" name="nokrel" value="%{.}" />
							</div>

							<div class="col-md-2">
								<label for="noktel" class=""><strong>Telephone:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="noktel" name="noktel" value="%{.}" />
							</div>
							<div class="col-md-4">
								<label for="nokAdd" class=""><strong>Address: <font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="nokAdd" name="nokAdd" value="%{.}" />
							</div>
						</div>
					</fieldset>

				</tr>

			</table>
			<br>
			<br>
			<hr />


			<!--------------------------------------- PART II - EDUCATION AND TRAINING  .------------------------------>
			<br>






			<h3>
				<strong>2. Education and Training </strong>
			</h3>
			<table id="" class="table table-stripped">
				<tr>

					<fieldset>
						<legend>
							<font style="color: #d3d3d3">Current institution: </font>
						</legend>
						<div class="row">
							
						<div class="col-md-6">
								<label for="title" class=""><strong>Name:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="" name="" value="%{.}" />
							</div>

							<div class="col-md-6">
								<label for="title" class=""><strong> Country:<font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:select cssClass="" emptyOption="true" value="%{cdoBioData.educationAndTraining[0].country}" name="cdoBioData.educationAndTraining[0].country" 
                list="#{'Afghanistan':'Afghanistan','Åland Islands':'Åland Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','Côte d`Ivoire':'Côte d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Curaçao':'Curaçao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','Réunion':'Réunion','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barthélemy':'Saint-Barthélemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}"
 /></div>

							</div>

							<div class="row">
							<div class="col-md-2">
								<label for="title" class=""><strong>Start Period of study:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="startMonthYearOfCertification" name="stopMonthYearOfCertification" value="%{.}" />
							</div>
							<div class="col-md-2">
								<label for="title" class=""><strong>End Period of study:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="endMonthYearOfCertification" name="endMonthYearOfCertification" value="%{.}" />
							</div>
							<div class="col-md-4">
								<label for="title" class=""><strong>Major field of study
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:select 
					name="cdoBioData.educationAndTraining[0].majorFieldOfStudy" 
					list="#{'Accounting':'Accounting'
,'Addiction Medicine':'Addiction Medicine'
,'Admiralty Law':'Admiralty Law'
,'Advertising':'Advertising'
,'Aerospace Engineering':'Aerospace Engineering'
,'Agricultural Education':'Agricultural Education'
,'Agricultural Engineering':'Agricultural Engineering'
,'Agricultural Policy':'Agricultural Policy'
,'Alternative Education':'Alternative Education'
,'American Sign Language':'American Sign Language'
,'Amphibious Warfare':'Amphibious Warfare'
,'Andrology':'Andrology'
,'Animal Communication':'Animal Communication'
,'Animal Law/Animal Rights':'Animal Law/Animal Rights'
,'Apparel Design':'Apparel Design'
,'Applied Science In Biology':'Applied Science In Biology'
,'Applied Science In Exercise Science':'Applied Science In Exercise Science'
,'Applied Science In Psychology':'Applied Science In Psychology'
,'Archival Science':'Archival Science'
,'Art History':'Art History'
,'Art Education':'Art Education'
,'Artillery':'Artillery'
,'Associate Of Arts Program':'Associate Of Arts Program'
,'Athletic Director':'Athletic Director'
,'Athletic Training':'Athletic Training'
,'Automotive Engineering':'Automotive Engineering'
,'Bariatric Surgery':'Bariatric Surgery'
,'Behavioral Medicine':'Behavioral Medicine'
,'Biblical Hebrew':'Biblical Hebrew'
,'Biblical Studies/Sacred Scripture':'Biblical Studies/Sacred Scripture'
,'Bibliometrics':'Bibliometrics'
,'Bilingual Education':'Bilingual Education'
,'Bioengineering':'Bioengineering'
,'Biology':'Biology'
,'Biomechanical Engineering':'Biomechanical Engineering'
,'Biomechanics/Sports Biomechanics':'Biomechanics/Sports Biomechanics'
,'Biomedical Engineering':'Biomedical Engineering'
,'Broadcast Journalism':'Broadcast Journalism'
,'Business Administration- Marketing And Management':'Business Administration- Marketing And Management'
,'Business-To-Business Sales':'Business-To-Business Sales'
,'Business-To-Business Sales Certificates I&Ii':'Business-To-Business Sales Certificates I&Ii'
,'Campaigning':'Campaigning'
,'Canon Law':'Canon Law'
,'Cardiology':'Cardiology'
,'Cardiothoracic Surgery':'Cardiothoracic Surgery'
,'Catechetical Ministry Certificate':'Catechetical Ministry Certificate'
,'Ceramic Engineering':'Ceramic Engineering'
,'Chemical Engineering':'Chemical Engineering'
,'Chemistry':'Chemistry'
,'Chemistry Education':'Chemistry Education'
,'Child Welfare':'Child Welfare'
,'Christian Ethics':'Christian Ethics'
,'Church History':'Church History'
,'Citation Analysis':'Citation Analysis'
,'Civil Engineering':'Civil Engineering'
,'Civil Law':'Civil Law'
,'Civil Procedure':'Civil Procedure'
,'Clinical Physiology':'Clinical Physiology'
,'Clinical Biochemistry':'Clinical Biochemistry'
,'Clinical Immunology':'Clinical Immunology'
,'Clinical Laboratory Sciences/Clinical Pathology/Laboratory Medicine':'Clinical Laboratory Sciences/Clinical Pathology/Laboratory Medicine'
,'Clinical Microbiology':'Clinical Microbiology'
,'Clinical Psychology':'Clinical Psychology'
,'Coastal Management':'Coastal Management'
,'Coding Specialist':'Coding Specialist'
,'Communication Studies':'Communication Studies'
,'Communication Design':'Communication Design'
,'Communication- Oral':'Communication- Oral'
,'Community Health Worker':'Community Health Worker'
,'Community Informatics':'Community Informatics'
,'Community Organizing':'Community Organizing'
,'Community Practice':'Community Practice'
,'Comparative Law':'Comparative Law'
,'Competition Law':'Competition Law'
,'Computational Economics':'Computational Economics'
,'Computational Finance':'Computational Finance'
,'Computational Sociology':'Computational Sociology'
,'Computer Science':'Computer Science'
,'Computer Engineering':'Computer Engineering'
,'Conservation Biology':'Conservation Biology'
,'Conservation Science':'Conservation Science'
,'Constitutional Law':'Constitutional Law'
,'Consumer Education':'Consumer Education'
,'Contract Law':'Contract Law'
,'Control Systems Engineering':'Control Systems Engineering'
,'Cooperative Learning':'Cooperative Learning'
,'Corporations':'Corporations'
,'Corrections':'Corrections'
,'Counseling Psychology':'Counseling Psychology'
,'Counselor Education':'Counselor Education'
,'Criminal Justice':'Criminal Justice'
,'Criminal Law':'Criminal Law'
,'Criminal Procedure':'Criminal Procedure'
,'Critical Studies Of Race And Ethnicity':'Critical Studies Of Race And Ethnicity'
,'Critical Pedagogy':'Critical Pedagogy'
,'Cytogenetics':'Cytogenetics'
,'Cytohematology':'Cytohematology'
,'Cytology':'Cytology'
,'Dance':'Dance'
,'Defense Policy':'Defense Policy'
,'Dental Hygiene And Epidemiology':'Dental Hygiene And Epidemiology'
,'Dental Surgery':'Dental Surgery'
,'Dentistry':'Dentistry'
,'Dermatology':'Dermatology'
,'Dietetics':'Dietetics'
,'Distance Education':'Distance Education'
,'Doctrine':'Doctrine'
,'Dogmatic Theology':'Dogmatic Theology'
,'Domestic Policy':'Domestic Policy'
,'Drug Policy':'Drug Policy'
,'Earthquake Engineering':'Earthquake Engineering'
,'Ecclesiology':'Ecclesiology'
,'Ecological Engineering':'Ecological Engineering'
,'Economics':'Economics'
,'Education':'Education'
,'Education Policy':'Education Policy'
,'Educational Leadership':'Educational Leadership'
,'Educational Philosophy':'Educational Philosophy'
,'Educational Psychology':'Educational Psychology'
,'Educational Technology':'Educational Technology'
,'Electrical Engineering':'Electrical Engineering'
,'Electronic Media Studies':'Electronic Media Studies'
,'Electronic Engineering':'Electronic Engineering'
,'Elementary Education':'Elementary Education'
,'Emergency Management':'Emergency Management'
,'Endocrinology':'Endocrinology'
,'Endodontics':'Endodontics'
,'Energy Policy':'Energy Policy'
,'Engineering Geology':'Engineering Geology'
,'Engineering Physics':'Engineering Physics'
,'English':'English'
,'Environmental Communication':'Environmental Communication'
,'Environmental Engineering':'Environmental Engineering'
,'Environmental Law':'Environmental Law'
,'Environmental Management':'Environmental Management'
,'Environmental Policy':'Environmental Policy'
,'Ergonomics':'Ergonomics'
,'Exercise Science And Nutrition (Combined Major)':'Exercise Science And Nutrition (Combined Major)'
,'Exercise And Sport Science':'Exercise And Sport Science'
,'Exercise Physiology':'Exercise Physiology'
,'Family And Consumer Science':'Family And Consumer Science'
,'Fashion Merchandising':'Fashion Merchandising'
,'Financial Economics':'Financial Economics'
,'Fire Ecology (Wildland Fire Management)':'Fire Ecology (Wildland Fire Management)'
,'Fire Safety (Structural Fire Protection)':'Fire Safety (Structural Fire Protection)'
,'Fiscal Policy':'Fiscal Policy'
,'Fisheries Management':'Fisheries Management'
,'Food Engineering':'Food Engineering'
,'Foods And Nutrition- Business':'Foods And Nutrition- Business'
,'Foods And Nutrition- Science':'Foods And Nutrition- Science'
,'Foodservice Management':'Foodservice Management'
,'Foot And Ankle Surgery':'Foot And Ankle Surgery'
,'Foreign Policy':'Foreign Policy'
,'Forensic Science':'Forensic Science'
,'French':'French'
,'Game Design':'Game Design'
,'Game Theory':'Game Theory'
,'Gastroenterology':'Gastroenterology'
,'General Practice':'General Practice'
,'Geography':'Geography'
,'Geotechnical Engineering':'Geotechnical Engineering'
,'Geriatrics':'Geriatrics'
,'Gerontology':'Gerontology'
,'Governmental Affairs':'Governmental Affairs'
,'Group Fitness/Aerobics':'Group Fitness/Aerobics'
,'Gynaecology':'Gynaecology'
,'Haemostasiology':'Haemostasiology'
,'Hand Surgery':'Hand Surgery'
,'Health Information Specialist':'Health Information Specialist'
,'Health Informatics/Clinical Informatics':'Health Informatics/Clinical Informatics'
,'Health Policy':'Health Policy'
,'Health Psychology':'Health Psychology'
,'Healthcare Management':'Healthcare Management'
,'Healthcare Sales':'Healthcare Sales'
,'Healthcare Sales Certificate':'Healthcare Sales Certificate'
,'Hematology':'Hematology'
,'Hepatology':'Hepatology'
,'Higher Education':'Higher Education'
,'Highway Engineering':'Highway Engineering'
,'Highway Safety':'Highway Safety'
,'Histology':'Histology'
,'History':'History'
,'History Of Computer Hardware':'History Of Computer Hardware'
,'History Of Computer Science':'History Of Computer Science'
,'Homiletics':'Homiletics'
,'Honors Program':'Honors Program'
,'Housing':'Housing'
,'Housing Policy':'Housing Policy'
,'Humanistic Informatics':'Humanistic Informatics'
,'Immigration Policy':'Immigration Policy'
,'Implantology':'Implantology'
,'Industrial Engineering':'Industrial Engineering'
,'Infectious Disease':'Infectious Disease'
,'Infographics':'Infographics'
,'Informatics':'Informatics'
,'Information Architecture':'Information Architecture'
,'Information Theory':'Information Theory'
,'Instrumentation Engineering':'Instrumentation Engineering'
,'Intercultural Communication':'Intercultural Communication'
,'Interdisciplinary':'Interdisciplinary'
,'Interior Design':'Interior Design'
,'Intermodal Transportation Studies':'Intermodal Transportation Studies'
,'Internal Medicine':'Internal Medicine'
,'International Business And Economics':'International Business And Economics'
,'International Relations':'International Relations'
,'International Affairs':'International Affairs'
,'International Law':'International Law'
,'Internet':'Internet'
,'Interpreting':'Interpreting'
,'Islamic Law':'Islamic Law'
,'Jewish Law':'Jewish Law'
,'Joint Replacement':'Joint Replacement'
,'Journalism':'Journalism'
,'Jurisprudence (Philosophy Of Law)':'Jurisprudence (Philosophy Of Law)'
,'Kinesiology/Exercise Science/Human Performance':'Kinesiology/Exercise Science/Human Performance'
,'Labor Law':'Labor Law'
,'Labor Policy':'Labor Policy'
,'Land Management':'Land Management'
,'Language Education':'Language Education'
,'Latin':'Latin'
,'Leadership':'Leadership'
,'Legal Education':'Legal Education'
,'Leisure Studies':'Leisure Studies'
,'Literary Journalism':'Literary Journalism'
,'Liturgy':'Liturgy'
,'Logistics':'Logistics'
,'Magazine':'Magazine'
,'Manufacturing Engineering':'Manufacturing Engineering'
,'Marine Engineering':'Marine Engineering'
,'Marine Transportation':'Marine Transportation'
,'Marketing':'Marketing'
,'Mass Communication':'Mass Communication'
,'Mass Transit':'Mass Transit'
,'Mastery Learning':'Mastery Learning'
,'Materials Engineering':'Materials Engineering'
,'Mathematics':'Mathematics'
,'Mathematics Education':'Mathematics Education'
,'Mechanical Engineering':'Mechanical Engineering'
,'Media Studies (Mass Media)':'Media Studies (Mass Media)'
,'Medical Education':'Medical Education'
,'Medical Psychology':'Medical Psychology'
,'Medical Social Work':'Medical Social Work'
,'Medical Toxicology':'Medical Toxicology'
,'Mental Health':'Mental Health'
,'Metallurgical Engineering':'Metallurgical Engineering'
,'Midwifery-Obstetrics':'Midwifery-Obstetrics'
,'Military Education And Training':'Military Education And Training'
,'Military Engineering':'Military Engineering'
,'Military History':'Military History'
,'Military Intelligence':'Military Intelligence'
,'Military Law':'Military Law'
,'Military Medicine':'Military Medicine'
,'Mining Engineering':'Mining Engineering'
,'Missiology':'Missiology'
,'Molecular Genetics':'Molecular Genetics'
,'Montessori Early Childhood Associate Credential':'Montessori Early Childhood Associate Credential'
,'Museology':'Museology'
,'Museum Administration':'Museum Administration'
,'Music Studies':'Music Studies'
,'Music Theater':'Music Theater'
,'Music Education':'Music Education'
,'Music In The Church':'Music In The Church'
,'Nanoengineering':'Nanoengineering'
,'Natural Resource Management':'Natural Resource Management'
,'Naval Architecture':'Naval Architecture'
,'Naval Engineering':'Naval Engineering'
,'Naval Science':'Naval Science'
,'Naval Tactics':'Naval Tactics'
,'Nephrology':'Nephrology'
,'Neurology':'Neurology'
,'Neurosurgery':'Neurosurgery'
,'New Testament Greek':'New Testament Greek'
,'New Media Journalism':'New Media Journalism'
,'Newspaper':'Newspaper'
,'Non-Governmental Organization (Ngo) Administration':'Non-Governmental Organization (Ngo) Administration'
,'Nonprofit Administration':'Nonprofit Administration'
,'Nonverbal Communication':'Nonverbal Communication'
,'Nuclear Engineering':'Nuclear Engineering'
,'Nursing':'Nursing'
,'Nursing Education':'Nursing Education'
,'Nursing Theory':'Nursing Theory'
,'Nutrition':'Nutrition'
,'Nutritionand Dietetics':'Nutritionand Dietetics'
,'Obstetrics':'Obstetrics'
,'Occupational Science- Pre-Occupational Therapy':'Occupational Science- Pre-Occupational Therapy'
,'Occupational Therapy Assistant':'Occupational Therapy Assistant'
,'Occupational Therapy':'Occupational Therapy'
,'Ocean Engineering':'Ocean Engineering'
,'Old Church Slavonic':'Old Church Slavonic'
,'Oncology':'Oncology'
,'Operations Research':'Operations Research'
,'Ophthalmic Technician Program':'Ophthalmic Technician Program'
,'Ophthalmology':'Ophthalmology'
,'Optical Engineering':'Optical Engineering'
,'Optometry':'Optometry'
,'Oral And Maxillofacial Surgery':'Oral And Maxillofacial Surgery'
,'Organizational Communication':'Organizational Communication'
,'Orthodontics':'Orthodontics'
,'Orthopedic Surgery':'Orthopedic Surgery'
,'Orthoptics':'Orthoptics'
,'Otolaryngology':'Otolaryngology'
,'Paralegal Studies':'Paralegal Studies'
,'Parasitology':'Parasitology'
,'Pastoral Ministry Certificate':'Pastoral Ministry Certificate'
,'Pastoral Counseling':'Pastoral Counseling'
,'Pastoral Theology':'Pastoral Theology'
,'Pathology':'Pathology'
,'Peace And Conflict Studies':'Peace And Conflict Studies'
,'Peace Education':'Peace Education'
,'Pediatrics':'Pediatrics'
,'Periodontics':'Periodontics'
,'Personal Fitness Training':'Personal Fitness Training'
,'Personal Trainer/Personal Fitness Training':'Personal Trainer/Personal Fitness Training'
,'Petroleum Engineering':'Petroleum Engineering'
,'Pharmaceutical Sciences':'Pharmaceutical Sciences'
,'Pharmacy':'Pharmacy'
,'Philosophy':'Philosophy'
,'Philosophy- Ethics':'Philosophy- Ethics'
,'Philosophy- History And Ideas':'Philosophy- History And Ideas'
,'Phlebotomy Program':'Phlebotomy Program'
,'Physical Therapist Assistant':'Physical Therapist Assistant'
,'Physical Education/Pedagogy':'Physical Education/Pedagogy'
,'Physical Education/Sports Coaching':'Physical Education/Sports Coaching'
,'Physical Fitness':'Physical Fitness'
,'Physics Education':'Physics Education'
,'Physiotherapy':'Physiotherapy'
,'Plastic Surgery':'Plastic Surgery'
,'Podiatry':'Podiatry'
,'Police Science':'Police Science'
,'Political Science':'Political Science'
,'Polymer Engineering':'Polymer Engineering'
,'Port Management':'Port Management'
,'Preventive Medicine':'Preventive Medicine'
,'Primary Care':'Primary Care'
,'Print Journalism':'Print Journalism'
,'Propaganda':'Propaganda'
,'Property Law':'Property Law'
,'Prosthodontics':'Prosthodontics'
,'Psychiatry':'Psychiatry'
,'Psychology':'Psychology'
,'Public Health':'Public Health'
,'Public Administration':'Public Administration'
,'Public Policy':'Public Policy'
,'Public Relations':'Public Relations'
,'Pulmonology':'Pulmonology'
,'Quality Assurance Engineering':'Quality Assurance Engineering'
,'Radio':'Radio'
,'Radiography':'Radiography'
,'Radiology':'Radiology'
,'Reading Education':'Reading Education'
,'Recreation Ecology':'Recreation Ecology'
,'Recreation Therapy':'Recreation Therapy'
,'Rehabilitation Medicine':'Rehabilitation Medicine'
,'Religious Education':'Religious Education'
,'Religious Education Techniques':'Religious Education Techniques'
,'Respiratory Care':'Respiratory Care'
,'Respiratory Medicine':'Respiratory Medicine'
,'Respiratory Therapy':'Respiratory Therapy'
,'Rheumatology':'Rheumatology'
,'Sacramental Theology':'Sacramental Theology'
,'Sacred Music':'Sacred Music'
,'Safety Engineering':'Safety Engineering'
,'School Social Work':'School Social Work'
,'Science Education':'Science Education'
,'Engineering And Mathematics (Stem)':'Engineering And Mathematics (Stem)'
,'Second Major Certificate':'Second Major Certificate'
,'Secondary Education':'Secondary Education'
,'Sex Education':'Sex Education'
,'Sexology':'Sexology'
,'Shoulder Surgery':'Shoulder Surgery'
,'Silviculture':'Silviculture'
,'Sleep Medicine':'Sleep Medicine'
,'Small Business/Entrepreneurship':'Small Business/Entrepreneurship'
,'Social Studies':'Social Studies'
,'Social Work':'Social Work'
,'Social Policy':'Social Policy'
,'Sociology':'Sociology'
,'Sociology Of Education':'Sociology Of Education'
,'Sociology Of Sport':'Sociology Of Sport'
,'Software Engineering':'Software Engineering'
,'Sonography':'Sonography'
,'Spanish':'Spanish'
,'Special Education':'Special Education'
,'Speech And Language Pathology':'Speech And Language Pathology'
,'Speech Communication':'Speech Communication'
,'Sport Management':'Sport Management'
,'Sport Psychology':'Sport Psychology'
,'Sports Coaching':'Sports Coaching'
,'Sports Journalism/Sportscasting':'Sports Journalism/Sportscasting'
,'Sports Medicine':'Sports Medicine'
,'Strategy':'Strategy'
,'Structural Engineering':'Structural Engineering'
,'Studio Art':'Studio Art'
,'Surgery':'Surgery'
,'Sustainability Studies':'Sustainability Studies'
,'Sustainable Development':'Sustainable Development'
,'Systematic Theology':'Systematic Theology'
,'Systems Engineering':'Systems Engineering'
,'Tactics':'Tactics'
,'Tax Law':'Tax Law'
,'Technical Writing':'Technical Writing'
,'Technology Education':'Technology Education'
,'Telecommunications Engineering':'Telecommunications Engineering'
,'Television':'Television'
,'Television Studies':'Television Studies'
,'Textiles':'Textiles'
,'The Digital Humanities (Humanities Computing)':'The Digital Humanities (Humanities Computing)'
,'Theology':'Theology'
,'Tort Law':'Tort Law'
,'Toxicology':'Toxicology'
,'Toy And Amusement Design':'Toy And Amusement Design'
,'Trade Policy':'Trade Policy'
,'Translation':'Translation'
,'Transportation Engineering':'Transportation Engineering'
,'Traumatology':'Traumatology'
,'Urology':'Urology'
,'Vehicle Engineering':'Vehicle Engineering'
,'Veterinary Medicine':'Veterinary Medicine'
,'Vocational Education':'Vocational Education'
,'Weapons Systems':'Weapons Systems'
,'Web Engineering':'Web Engineering'
,'Wildlife Management':'Wildlife Management'
,'Women And International Development':'Women And International Development'
,'Women`s Studies':'Women`s Studies'}" 
					value="%{cdoBioData.educationAndTraining[0].majorFieldOfStudy}" cssClass="form-control" headerKey="" headerValue="--Select major field--" /></td>
				
							</div>
							<div class="col-md-4">
								<label for="title" class=""><strong>Degree obtained: <font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:select cssClass="form-control" emptyOption="" 
					name="." 
					list="#{'MSc.':'Master of Science',
					'PhD':'Doctor of Philosopy'}"  
					value="%{}" headerKey="" headerValue="--Select Degree obtained--" /></td>
                
							</div>
						</div>
					</fieldset>

				</tr>








				<tr>
				<fieldset>
						<legend>
							<font style="color: #d3d3d3">Other Degrees obtained: </font>
						</legend>
						<div class="row">
							
						<div class="col-md-6">
								<label for="title" class=""><strong>Name:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="" name="" value="%{.}" />
							</div>

							<div class="col-md-6">
								<label for="title" class=""><strong> Country:<font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:select cssClass="" emptyOption="true" value="%{cdoBioData.educationAndTraining[0].country}" name="cdoBioData.educationAndTraining[0].country" 
                list="#{'Afghanistan':'Afghanistan','Åland Islands':'Åland Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','Côte d`Ivoire':'Côte d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Curaçao':'Curaçao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','Réunion':'Réunion','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barthélemy':'Saint-Barthélemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}"
 /></div>

							</div>

							<div class="row">
							<div class="col-md-2">
								<label for="title" class=""><strong>Start Period of study:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="startMonthYearOfCertification" name="stopMonthYearOfCertification" value="%{.}" />
							</div>
							<div class="col-md-2">
								<label for="title" class=""><strong>End Period of study:
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="endMonthYearOfCertification" name="endMonthYearOfCertification" value="%{.}" />
							</div>
							<div class="col-md-4">
								<label for="title" class=""><strong>Major field of study
										<font style="color: #ff0000">*</font>
								</strong></label>
								<s:select 
					name="cdoBioData.educationAndTraining[0].majorFieldOfStudy" 
					list="#{'Accounting':'Accounting'
,'Addiction Medicine':'Addiction Medicine'
,'Admiralty Law':'Admiralty Law'
,'Advertising':'Advertising'
,'Aerospace Engineering':'Aerospace Engineering'
,'Agricultural Education':'Agricultural Education'
,'Agricultural Engineering':'Agricultural Engineering'
,'Agricultural Policy':'Agricultural Policy'
,'Alternative Education':'Alternative Education'
,'American Sign Language':'American Sign Language'
,'Amphibious Warfare':'Amphibious Warfare'
,'Andrology':'Andrology'
,'Animal Communication':'Animal Communication'
,'Animal Law/Animal Rights':'Animal Law/Animal Rights'
,'Apparel Design':'Apparel Design'
,'Applied Science In Biology':'Applied Science In Biology'
,'Applied Science In Exercise Science':'Applied Science In Exercise Science'
,'Applied Science In Psychology':'Applied Science In Psychology'
,'Archival Science':'Archival Science'
,'Art History':'Art History'
,'Art Education':'Art Education'
,'Artillery':'Artillery'
,'Associate Of Arts Program':'Associate Of Arts Program'
,'Athletic Director':'Athletic Director'
,'Athletic Training':'Athletic Training'
,'Automotive Engineering':'Automotive Engineering'
,'Bariatric Surgery':'Bariatric Surgery'
,'Behavioral Medicine':'Behavioral Medicine'
,'Biblical Hebrew':'Biblical Hebrew'
,'Biblical Studies/Sacred Scripture':'Biblical Studies/Sacred Scripture'
,'Bibliometrics':'Bibliometrics'
,'Bilingual Education':'Bilingual Education'
,'Bioengineering':'Bioengineering'
,'Biology':'Biology'
,'Biomechanical Engineering':'Biomechanical Engineering'
,'Biomechanics/Sports Biomechanics':'Biomechanics/Sports Biomechanics'
,'Biomedical Engineering':'Biomedical Engineering'
,'Broadcast Journalism':'Broadcast Journalism'
,'Business Administration- Marketing And Management':'Business Administration- Marketing And Management'
,'Business-To-Business Sales':'Business-To-Business Sales'
,'Business-To-Business Sales Certificates I&Ii':'Business-To-Business Sales Certificates I&Ii'
,'Campaigning':'Campaigning'
,'Canon Law':'Canon Law'
,'Cardiology':'Cardiology'
,'Cardiothoracic Surgery':'Cardiothoracic Surgery'
,'Catechetical Ministry Certificate':'Catechetical Ministry Certificate'
,'Ceramic Engineering':'Ceramic Engineering'
,'Chemical Engineering':'Chemical Engineering'
,'Chemistry':'Chemistry'
,'Chemistry Education':'Chemistry Education'
,'Child Welfare':'Child Welfare'
,'Christian Ethics':'Christian Ethics'
,'Church History':'Church History'
,'Citation Analysis':'Citation Analysis'
,'Civil Engineering':'Civil Engineering'
,'Civil Law':'Civil Law'
,'Civil Procedure':'Civil Procedure'
,'Clinical Physiology':'Clinical Physiology'
,'Clinical Biochemistry':'Clinical Biochemistry'
,'Clinical Immunology':'Clinical Immunology'
,'Clinical Laboratory Sciences/Clinical Pathology/Laboratory Medicine':'Clinical Laboratory Sciences/Clinical Pathology/Laboratory Medicine'
,'Clinical Microbiology':'Clinical Microbiology'
,'Clinical Psychology':'Clinical Psychology'
,'Coastal Management':'Coastal Management'
,'Coding Specialist':'Coding Specialist'
,'Communication Studies':'Communication Studies'
,'Communication Design':'Communication Design'
,'Communication- Oral':'Communication- Oral'
,'Community Health Worker':'Community Health Worker'
,'Community Informatics':'Community Informatics'
,'Community Organizing':'Community Organizing'
,'Community Practice':'Community Practice'
,'Comparative Law':'Comparative Law'
,'Competition Law':'Competition Law'
,'Computational Economics':'Computational Economics'
,'Computational Finance':'Computational Finance'
,'Computational Sociology':'Computational Sociology'
,'Computer Science':'Computer Science'
,'Computer Engineering':'Computer Engineering'
,'Conservation Biology':'Conservation Biology'
,'Conservation Science':'Conservation Science'
,'Constitutional Law':'Constitutional Law'
,'Consumer Education':'Consumer Education'
,'Contract Law':'Contract Law'
,'Control Systems Engineering':'Control Systems Engineering'
,'Cooperative Learning':'Cooperative Learning'
,'Corporations':'Corporations'
,'Corrections':'Corrections'
,'Counseling Psychology':'Counseling Psychology'
,'Counselor Education':'Counselor Education'
,'Criminal Justice':'Criminal Justice'
,'Criminal Law':'Criminal Law'
,'Criminal Procedure':'Criminal Procedure'
,'Critical Studies Of Race And Ethnicity':'Critical Studies Of Race And Ethnicity'
,'Critical Pedagogy':'Critical Pedagogy'
,'Cytogenetics':'Cytogenetics'
,'Cytohematology':'Cytohematology'
,'Cytology':'Cytology'
,'Dance':'Dance'
,'Defense Policy':'Defense Policy'
,'Dental Hygiene And Epidemiology':'Dental Hygiene And Epidemiology'
,'Dental Surgery':'Dental Surgery'
,'Dentistry':'Dentistry'
,'Dermatology':'Dermatology'
,'Dietetics':'Dietetics'
,'Distance Education':'Distance Education'
,'Doctrine':'Doctrine'
,'Dogmatic Theology':'Dogmatic Theology'
,'Domestic Policy':'Domestic Policy'
,'Drug Policy':'Drug Policy'
,'Earthquake Engineering':'Earthquake Engineering'
,'Ecclesiology':'Ecclesiology'
,'Ecological Engineering':'Ecological Engineering'
,'Economics':'Economics'
,'Education':'Education'
,'Education Policy':'Education Policy'
,'Educational Leadership':'Educational Leadership'
,'Educational Philosophy':'Educational Philosophy'
,'Educational Psychology':'Educational Psychology'
,'Educational Technology':'Educational Technology'
,'Electrical Engineering':'Electrical Engineering'
,'Electronic Media Studies':'Electronic Media Studies'
,'Electronic Engineering':'Electronic Engineering'
,'Elementary Education':'Elementary Education'
,'Emergency Management':'Emergency Management'
,'Endocrinology':'Endocrinology'
,'Endodontics':'Endodontics'
,'Energy Policy':'Energy Policy'
,'Engineering Geology':'Engineering Geology'
,'Engineering Physics':'Engineering Physics'
,'English':'English'
,'Environmental Communication':'Environmental Communication'
,'Environmental Engineering':'Environmental Engineering'
,'Environmental Law':'Environmental Law'
,'Environmental Management':'Environmental Management'
,'Environmental Policy':'Environmental Policy'
,'Ergonomics':'Ergonomics'
,'Exercise Science And Nutrition (Combined Major)':'Exercise Science And Nutrition (Combined Major)'
,'Exercise And Sport Science':'Exercise And Sport Science'
,'Exercise Physiology':'Exercise Physiology'
,'Family And Consumer Science':'Family And Consumer Science'
,'Fashion Merchandising':'Fashion Merchandising'
,'Financial Economics':'Financial Economics'
,'Fire Ecology (Wildland Fire Management)':'Fire Ecology (Wildland Fire Management)'
,'Fire Safety (Structural Fire Protection)':'Fire Safety (Structural Fire Protection)'
,'Fiscal Policy':'Fiscal Policy'
,'Fisheries Management':'Fisheries Management'
,'Food Engineering':'Food Engineering'
,'Foods And Nutrition- Business':'Foods And Nutrition- Business'
,'Foods And Nutrition- Science':'Foods And Nutrition- Science'
,'Foodservice Management':'Foodservice Management'
,'Foot And Ankle Surgery':'Foot And Ankle Surgery'
,'Foreign Policy':'Foreign Policy'
,'Forensic Science':'Forensic Science'
,'French':'French'
,'Game Design':'Game Design'
,'Game Theory':'Game Theory'
,'Gastroenterology':'Gastroenterology'
,'General Practice':'General Practice'
,'Geography':'Geography'
,'Geotechnical Engineering':'Geotechnical Engineering'
,'Geriatrics':'Geriatrics'
,'Gerontology':'Gerontology'
,'Governmental Affairs':'Governmental Affairs'
,'Group Fitness/Aerobics':'Group Fitness/Aerobics'
,'Gynaecology':'Gynaecology'
,'Haemostasiology':'Haemostasiology'
,'Hand Surgery':'Hand Surgery'
,'Health Information Specialist':'Health Information Specialist'
,'Health Informatics/Clinical Informatics':'Health Informatics/Clinical Informatics'
,'Health Policy':'Health Policy'
,'Health Psychology':'Health Psychology'
,'Healthcare Management':'Healthcare Management'
,'Healthcare Sales':'Healthcare Sales'
,'Healthcare Sales Certificate':'Healthcare Sales Certificate'
,'Hematology':'Hematology'
,'Hepatology':'Hepatology'
,'Higher Education':'Higher Education'
,'Highway Engineering':'Highway Engineering'
,'Highway Safety':'Highway Safety'
,'Histology':'Histology'
,'History':'History'
,'History Of Computer Hardware':'History Of Computer Hardware'
,'History Of Computer Science':'History Of Computer Science'
,'Homiletics':'Homiletics'
,'Honors Program':'Honors Program'
,'Housing':'Housing'
,'Housing Policy':'Housing Policy'
,'Humanistic Informatics':'Humanistic Informatics'
,'Immigration Policy':'Immigration Policy'
,'Implantology':'Implantology'
,'Industrial Engineering':'Industrial Engineering'
,'Infectious Disease':'Infectious Disease'
,'Infographics':'Infographics'
,'Informatics':'Informatics'
,'Information Architecture':'Information Architecture'
,'Information Theory':'Information Theory'
,'Instrumentation Engineering':'Instrumentation Engineering'
,'Intercultural Communication':'Intercultural Communication'
,'Interdisciplinary':'Interdisciplinary'
,'Interior Design':'Interior Design'
,'Intermodal Transportation Studies':'Intermodal Transportation Studies'
,'Internal Medicine':'Internal Medicine'
,'International Business And Economics':'International Business And Economics'
,'International Relations':'International Relations'
,'International Affairs':'International Affairs'
,'International Law':'International Law'
,'Internet':'Internet'
,'Interpreting':'Interpreting'
,'Islamic Law':'Islamic Law'
,'Jewish Law':'Jewish Law'
,'Joint Replacement':'Joint Replacement'
,'Journalism':'Journalism'
,'Jurisprudence (Philosophy Of Law)':'Jurisprudence (Philosophy Of Law)'
,'Kinesiology/Exercise Science/Human Performance':'Kinesiology/Exercise Science/Human Performance'
,'Labor Law':'Labor Law'
,'Labor Policy':'Labor Policy'
,'Land Management':'Land Management'
,'Language Education':'Language Education'
,'Latin':'Latin'
,'Leadership':'Leadership'
,'Legal Education':'Legal Education'
,'Leisure Studies':'Leisure Studies'
,'Literary Journalism':'Literary Journalism'
,'Liturgy':'Liturgy'
,'Logistics':'Logistics'
,'Magazine':'Magazine'
,'Manufacturing Engineering':'Manufacturing Engineering'
,'Marine Engineering':'Marine Engineering'
,'Marine Transportation':'Marine Transportation'
,'Marketing':'Marketing'
,'Mass Communication':'Mass Communication'
,'Mass Transit':'Mass Transit'
,'Mastery Learning':'Mastery Learning'
,'Materials Engineering':'Materials Engineering'
,'Mathematics':'Mathematics'
,'Mathematics Education':'Mathematics Education'
,'Mechanical Engineering':'Mechanical Engineering'
,'Media Studies (Mass Media)':'Media Studies (Mass Media)'
,'Medical Education':'Medical Education'
,'Medical Psychology':'Medical Psychology'
,'Medical Social Work':'Medical Social Work'
,'Medical Toxicology':'Medical Toxicology'
,'Mental Health':'Mental Health'
,'Metallurgical Engineering':'Metallurgical Engineering'
,'Midwifery-Obstetrics':'Midwifery-Obstetrics'
,'Military Education And Training':'Military Education And Training'
,'Military Engineering':'Military Engineering'
,'Military History':'Military History'
,'Military Intelligence':'Military Intelligence'
,'Military Law':'Military Law'
,'Military Medicine':'Military Medicine'
,'Mining Engineering':'Mining Engineering'
,'Missiology':'Missiology'
,'Molecular Genetics':'Molecular Genetics'
,'Montessori Early Childhood Associate Credential':'Montessori Early Childhood Associate Credential'
,'Museology':'Museology'
,'Museum Administration':'Museum Administration'
,'Music Studies':'Music Studies'
,'Music Theater':'Music Theater'
,'Music Education':'Music Education'
,'Music In The Church':'Music In The Church'
,'Nanoengineering':'Nanoengineering'
,'Natural Resource Management':'Natural Resource Management'
,'Naval Architecture':'Naval Architecture'
,'Naval Engineering':'Naval Engineering'
,'Naval Science':'Naval Science'
,'Naval Tactics':'Naval Tactics'
,'Nephrology':'Nephrology'
,'Neurology':'Neurology'
,'Neurosurgery':'Neurosurgery'
,'New Testament Greek':'New Testament Greek'
,'New Media Journalism':'New Media Journalism'
,'Newspaper':'Newspaper'
,'Non-Governmental Organization (Ngo) Administration':'Non-Governmental Organization (Ngo) Administration'
,'Nonprofit Administration':'Nonprofit Administration'
,'Nonverbal Communication':'Nonverbal Communication'
,'Nuclear Engineering':'Nuclear Engineering'
,'Nursing':'Nursing'
,'Nursing Education':'Nursing Education'
,'Nursing Theory':'Nursing Theory'
,'Nutrition':'Nutrition'
,'Nutritionand Dietetics':'Nutritionand Dietetics'
,'Obstetrics':'Obstetrics'
,'Occupational Science- Pre-Occupational Therapy':'Occupational Science- Pre-Occupational Therapy'
,'Occupational Therapy Assistant':'Occupational Therapy Assistant'
,'Occupational Therapy':'Occupational Therapy'
,'Ocean Engineering':'Ocean Engineering'
,'Old Church Slavonic':'Old Church Slavonic'
,'Oncology':'Oncology'
,'Operations Research':'Operations Research'
,'Ophthalmic Technician Program':'Ophthalmic Technician Program'
,'Ophthalmology':'Ophthalmology'
,'Optical Engineering':'Optical Engineering'
,'Optometry':'Optometry'
,'Oral And Maxillofacial Surgery':'Oral And Maxillofacial Surgery'
,'Organizational Communication':'Organizational Communication'
,'Orthodontics':'Orthodontics'
,'Orthopedic Surgery':'Orthopedic Surgery'
,'Orthoptics':'Orthoptics'
,'Otolaryngology':'Otolaryngology'
,'Paralegal Studies':'Paralegal Studies'
,'Parasitology':'Parasitology'
,'Pastoral Ministry Certificate':'Pastoral Ministry Certificate'
,'Pastoral Counseling':'Pastoral Counseling'
,'Pastoral Theology':'Pastoral Theology'
,'Pathology':'Pathology'
,'Peace And Conflict Studies':'Peace And Conflict Studies'
,'Peace Education':'Peace Education'
,'Pediatrics':'Pediatrics'
,'Periodontics':'Periodontics'
,'Personal Fitness Training':'Personal Fitness Training'
,'Personal Trainer/Personal Fitness Training':'Personal Trainer/Personal Fitness Training'
,'Petroleum Engineering':'Petroleum Engineering'
,'Pharmaceutical Sciences':'Pharmaceutical Sciences'
,'Pharmacy':'Pharmacy'
,'Philosophy':'Philosophy'
,'Philosophy- Ethics':'Philosophy- Ethics'
,'Philosophy- History And Ideas':'Philosophy- History And Ideas'
,'Phlebotomy Program':'Phlebotomy Program'
,'Physical Therapist Assistant':'Physical Therapist Assistant'
,'Physical Education/Pedagogy':'Physical Education/Pedagogy'
,'Physical Education/Sports Coaching':'Physical Education/Sports Coaching'
,'Physical Fitness':'Physical Fitness'
,'Physics Education':'Physics Education'
,'Physiotherapy':'Physiotherapy'
,'Plastic Surgery':'Plastic Surgery'
,'Podiatry':'Podiatry'
,'Police Science':'Police Science'
,'Political Science':'Political Science'
,'Polymer Engineering':'Polymer Engineering'
,'Port Management':'Port Management'
,'Preventive Medicine':'Preventive Medicine'
,'Primary Care':'Primary Care'
,'Print Journalism':'Print Journalism'
,'Propaganda':'Propaganda'
,'Property Law':'Property Law'
,'Prosthodontics':'Prosthodontics'
,'Psychiatry':'Psychiatry'
,'Psychology':'Psychology'
,'Public Health':'Public Health'
,'Public Administration':'Public Administration'
,'Public Policy':'Public Policy'
,'Public Relations':'Public Relations'
,'Pulmonology':'Pulmonology'
,'Quality Assurance Engineering':'Quality Assurance Engineering'
,'Radio':'Radio'
,'Radiography':'Radiography'
,'Radiology':'Radiology'
,'Reading Education':'Reading Education'
,'Recreation Ecology':'Recreation Ecology'
,'Recreation Therapy':'Recreation Therapy'
,'Rehabilitation Medicine':'Rehabilitation Medicine'
,'Religious Education':'Religious Education'
,'Religious Education Techniques':'Religious Education Techniques'
,'Respiratory Care':'Respiratory Care'
,'Respiratory Medicine':'Respiratory Medicine'
,'Respiratory Therapy':'Respiratory Therapy'
,'Rheumatology':'Rheumatology'
,'Sacramental Theology':'Sacramental Theology'
,'Sacred Music':'Sacred Music'
,'Safety Engineering':'Safety Engineering'
,'School Social Work':'School Social Work'
,'Science Education':'Science Education'
,'Engineering And Mathematics (Stem)':'Engineering And Mathematics (Stem)'
,'Second Major Certificate':'Second Major Certificate'
,'Secondary Education':'Secondary Education'
,'Sex Education':'Sex Education'
,'Sexology':'Sexology'
,'Shoulder Surgery':'Shoulder Surgery'
,'Silviculture':'Silviculture'
,'Sleep Medicine':'Sleep Medicine'
,'Small Business/Entrepreneurship':'Small Business/Entrepreneurship'
,'Social Studies':'Social Studies'
,'Social Work':'Social Work'
,'Social Policy':'Social Policy'
,'Sociology':'Sociology'
,'Sociology Of Education':'Sociology Of Education'
,'Sociology Of Sport':'Sociology Of Sport'
,'Software Engineering':'Software Engineering'
,'Sonography':'Sonography'
,'Spanish':'Spanish'
,'Special Education':'Special Education'
,'Speech And Language Pathology':'Speech And Language Pathology'
,'Speech Communication':'Speech Communication'
,'Sport Management':'Sport Management'
,'Sport Psychology':'Sport Psychology'
,'Sports Coaching':'Sports Coaching'
,'Sports Journalism/Sportscasting':'Sports Journalism/Sportscasting'
,'Sports Medicine':'Sports Medicine'
,'Strategy':'Strategy'
,'Structural Engineering':'Structural Engineering'
,'Studio Art':'Studio Art'
,'Surgery':'Surgery'
,'Sustainability Studies':'Sustainability Studies'
,'Sustainable Development':'Sustainable Development'
,'Systematic Theology':'Systematic Theology'
,'Systems Engineering':'Systems Engineering'
,'Tactics':'Tactics'
,'Tax Law':'Tax Law'
,'Technical Writing':'Technical Writing'
,'Technology Education':'Technology Education'
,'Telecommunications Engineering':'Telecommunications Engineering'
,'Television':'Television'
,'Television Studies':'Television Studies'
,'Textiles':'Textiles'
,'The Digital Humanities (Humanities Computing)':'The Digital Humanities (Humanities Computing)'
,'Theology':'Theology'
,'Tort Law':'Tort Law'
,'Toxicology':'Toxicology'
,'Toy And Amusement Design':'Toy And Amusement Design'
,'Trade Policy':'Trade Policy'
,'Translation':'Translation'
,'Transportation Engineering':'Transportation Engineering'
,'Traumatology':'Traumatology'
,'Urology':'Urology'
,'Vehicle Engineering':'Vehicle Engineering'
,'Veterinary Medicine':'Veterinary Medicine'
,'Vocational Education':'Vocational Education'
,'Weapons Systems':'Weapons Systems'
,'Web Engineering':'Web Engineering'
,'Wildlife Management':'Wildlife Management'
,'Women And International Development':'Women And International Development'
,'Women`s Studies':'Women`s Studies'}" 
					value="%{cdoBioData.educationAndTraining[0].majorFieldOfStudy}" cssClass="form-control" headerKey="" headerValue="--Select major field--" /></td>
				
							</div>
							<div class="col-md-4">
								<label for="title" class=""><strong>Degree obtained: <font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:select cssClass="form-control" emptyOption="" 
					name="." 
					list="#{'MSc.':'Master of Science',
					'PhD':'Doctor of Philosopy'}"  
					value="%{}" headerKey="" headerValue="--Select Degree obtained--" /></td>
                
							</div>
						</div>
					</fieldset>
				</tr>

			</table>
			<br>
			<br>
			<hr />



	<!--------------------------------------- 2. lANGUAGE SKILLS  .------------------------------>
			<br>





<!-- <table id="" class="table table-stripped"> -->
<!-- 				<tr> -->
<!-- 				<fieldset> -->
<!-- 						<legend> -->
<!-- 							<font style="color: #d3d3d3">lANGUAGE SKILLS: </font> -->
<!-- 						</legend> -->
		<s:include value="languageskills.jsp" />

<!-- 					</tr> -->
<!-- 				</fieldset> -->
<!-- 			</table> -->


			<br>
			<br>
			<hr />


<!--------------------------------------- PART II. FACILITIES TO BE USED   .------------------------------>









<table id="" class="table table-stripped">
				<tr>
				<fieldset>
						<legend>
							<font style="color: #d3d3d3">PART II. FACILITIES TO BE USED : </font>
						</legend>
					<div class="row">
						<div class="col-md-12">
							<label for="Synopsis" class=""><strong> Provide Synopsis of Research Work: <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Synopsis" name="Synopsis" value="%{.}" />
						</div>
					</div>
					



					<div class="row">
						<div class="col-md-12">
							<label for="summary" class=""><strong> Short summary of research objective: <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="summary" name="summary" value="%{.}" />
						</div>
					</div>



					<div class="row">
						<div class="col-md-12">
							<label for="Required" class=""><strong> State Facilities Required:
(e.g. Bioscience Laboratory)
: <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Required" name="Required" value="%{.}" />
						</div>
					</div>



					<div class="row">
						<div class="col-md-6">
							<label for="last" class=""><strong>How long will your research work last?: (months) <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="last" name="last" value="%{.}" />
						</div>
				
						<div class="col-md-6">
							<label for="start" class=""><strong>When do you wish to start your research work?: (MM/YYYY) <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="start" name="start" value="%{.}" />
						</div>
					</div>




					<div class="row">
						<div class="col-md-12">
							<label for="Previous" class=""><strong>
Previous Collaboration with IITA:
 <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Previous" name="Previous" value="%{.}" />
						</div>
					</div>


					<div class="row">
						<div class="col-md-12">
							<label for="Location" class=""><strong>
Location:
 <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Location" name="Location" value="%{.}" />
						</div>
					</div>




					<div class="row">
						<div class="col-md-6">
							<label for="Contacts" class=""><strong>
IITA Contacts:
 <font
									style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="Contacts" name="Contacts" value="%{.}" />
						</div>
					
						<div class="col-md-6">
							<label for="email" class=""><strong>IITA Contact email(s):<font style="color: #ff0000">*</font>
							</strong></label>
							<s:textfield cssClass="form-control" id="email" name="email" value="%{.}" />
						</div>
					</div>
				</tr>
				</fieldset>
			</table>


<table id="" class="table table-stripped">
				<tr>
				<fieldset>
					<legend>
							<font style="color: #d3d3d3">SOURCE OF FUNDING: </font>
						</legend>
<s:include value="/WEB-INF/jsp/funding/form.jsp" />
</tr>
	</fieldset>
</table>

			<table class="inputform">
				<colgroup>
					<col width="200px" />
					<col />
				</colgroup>
				<tr>
					<td></td>
					<td><s:submit cssClass="btn btn-primary pull-right"
							action="save-form" value="Submit Form"
							onclick="if(confirm('Submit your Registeration form ?')){return true;}else{return false;}" />
				</tr>
			</table>

		</s:form>
		<div class="clearfix">&nbsp;</div>
	</div>

</body>
</html>