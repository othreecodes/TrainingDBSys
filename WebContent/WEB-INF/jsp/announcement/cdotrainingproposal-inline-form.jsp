<%@ include file="/common/taglibs.jsp"%>
<%-- <%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>

<s:form action="save-proposal" method="post">
	<s:hidden name="id" value="%{trainingProposal.id}" />


	<h2 class="page-header">Training Proposal Background</h2>
	<label for="type">Type:*</label>
	<s:select name="trainingProposal.type" id="type"
		cssClass="form-control"
		list="#{'Group':'Group'
						,'Graduate':'Graduate'
						,'Non-degree':'Non-degree'
						,'In-house Group':'In-house Group'
						,'Individual':'Individual'
						,'Staff Development':'Staff Development'
						,'Sabbatical':'Sabbatical'
						,'Talent Grant':'Talent Grant'
						,'Other':'Other'
						}"
		value="%{trainingProposal.type}" emptyOption="true" />

	<label>Title:*</label>

	<s:textfield id="tptitle" name="trainingProposal.title"
		cssClass="form-control" value="%{trainingProposal.title}" />
	<s:div id="divRelated"></s:div>

	<s:if test="trainingProposal.owner!=null">

		<label>Owner:</label>

		<div class="form-control">
			<s:property value="trainingProposal.owner.fullName" />
		</div>
	</s:if>

	<s:if test="trainingProposal.id!=null">

		<label>Status:</label>
		<div class="form-control">
			<s:property value="trainingProposal.status" />
		</div>

	</s:if>


	<label>Requester*:</label>
	<s:url namespace="/ajax" action="public-ajax" id="xx" />
	<iita:autocompleter cssClass="person form-control" name="requesterId"
		id="trainingProposal.requester.id" listKey="id" listValue="fullName"
		url="%{xx}" method="autocompleteUser"
		displayValue="%{trainingProposal.requester.fullName}"
		value="%{trainingProposal.requester.id}" />


	<label>Unit:</label>
	<s:textfield cssClass="form-control" name="trainingProposal.unit"
		value="%{trainingProposal.unit}" />


	<label>Program Director*:</label>
	<s:url namespace="/ajax" action="public-ajax" id="xxx" />
	<iita:autocompleter cssClass="person form-control" name="directorId"
		id="trainingProposal.programDirector.id" listKey="id"
		listValue="fullName" url="%{xxx}" method="autocompleteUser"
		displayValue="%{trainingProposal.programDirector.fullName}"
		value="%{trainingProposal.programDirector.id}" />

	<label>Project Information*:</label>

	<%--<FCK:editor
								instanceName="trainingProposal.projectInformation" height="100">
								<jsp:attribute name="value">${trainingProposal.projectInformation}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.projectInformation"
		name="trainingProposal.projectInformation"
		value="%{trainingProposal.projectInformation}" />
	<ckeditor:replace replace="trainingProposal.projectInformation"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />

	<label>CRP*:</label>
	<s:select name="trainingProposal.crp"
		list="#{'CRP 1.2 Humid':'CRP 1.2 Humid'
							,'CRP 3.2 Maize':'CRP 3.2 Maize'
							,'CRP 3.4 RTB':'CRP 3.4 RTB'
							,'CRP 3.5 Cereal Legumes':'CRP 3.5 Cereal Legumes'
							,'CRP 4 A4NH':'CRP 4 A4NH'
							,'CRP 5 WLE':'CRP 5 WLE'
							,'CRP 7 CCAFS':'CRP 7 CCAFS'
							,'CRP Genebank':'CRP Genebank'
							,'IITA Strategic':'IITA Strategic'
							}"
		cssClass="form-control" value="%{trainingProposal.crp}"
		multiple="false" headerKey="" headerValue="-- Select CRP --" />

	<label>Charge Cost Center*:</label>
	<s:textfield name="trainingProposal.costCenter" cssClass="form-control"
		value="%{trainingProposal.costCenter}" />

	<label>Activity*:</label>

	<%--<FCK:editor instanceName="trainingProposal.activity" height="100">
								<jsp:attribute name="value">${trainingProposal.activity}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.activity"
		name="trainingProposal.activity" value="%{trainingProposal.activity}" />
	<ckeditor:replace replace="trainingProposal.activity"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />

	<h2 class="page-header">Training Proposal Information</h2>


	<label>Training Introduction/Background:*</label>

	<%--<FCK:editor instanceName="trainingProposal.introduction" height="100">
								<jsp:attribute name="value">${trainingProposal.introduction}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.introduction"
		name="trainingProposal.introduction"
		value="%{trainingProposal.introduction}" />
	<ckeditor:replace replace="trainingProposal.introduction"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />


	<label>Target group/participants:</label>

	<%--<FCK:editor instanceName="trainingProposal.targetGroup" height="100">
								<jsp:attribute name="value">${trainingProposal.targetGroup}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.targetGroup"
		name="trainingProposal.targetGroup"
		value="%{trainingProposal.targetGroup}" />
	<ckeditor:replace replace="trainingProposal.targetGroup"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />


	<label>Expected No. of participants:</label>
	<s:textfield name="trainingProposal.numberOfParticipants"
		cssClass="form-control"
		value="%{trainingProposal.numberOfParticipants}" />

	<label>Expected No. of female(s):</label>
	<s:textfield name="trainingProposal.numberOfFemale"
		cssClass="form-control" value="%{trainingProposal.numberOfFemale}" />

	<label>Expected No. of male(s):</label>
	<s:textfield name="trainingProposal.numberOfMale"
		cssClass="form-control" value="%{trainingProposal.numberOfMale}" />

	<label>Objective:</label>

	<%--<FCK:editor instanceName="trainingProposal.objective" height="100">
								<jsp:attribute name="value">${trainingProposal.objective}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.objective"
		name="trainingProposal.objective"
		value="%{trainingProposal.objective}" />
	<ckeditor:replace replace="trainingProposal.objective"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />


	<label>Learning method:</label>

	<%--<FCK:editor instanceName="trainingProposal.learningMethod" height="100">
								<jsp:attribute name="value">${trainingProposal.learningMethod}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.learningMethod"
		name="trainingProposal.learningMethod"
		value="%{trainingProposal.learningMethod}" />
	<ckeditor:replace replace="trainingProposal.learningMethod"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />

	<label>Expected outcome:</label>
	<%--<FCK:editor instanceName="trainingProposal.expectedOutcome" height="100">
								<jsp:attribute name="value">${trainingProposal.expectedOutcome}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.expectedOutcome"
		name="trainingProposal.expectedOutcome"
		value="%{trainingProposal.expectedOutcome}" />
	<ckeditor:replace replace="trainingProposal.expectedOutcome"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />


	<label>Course contents:</label>

	<%--<FCK:editor instanceName="trainingProposal.courseContents" height="100">
								<jsp:attribute name="value">${trainingProposal.courseContents}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.courseContents"
		name="trainingProposal.courseContents"
		value="%{trainingProposal.courseContents}" />
	<ckeditor:replace replace="trainingProposal.courseContents"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />


	<label>Training fee: $</label>
	<s:textfield cssClass="numeric form-control"
		name="trainingProposal.trainingFee"
		value="%{trainingProposal.trainingFee}" />

	<label>Accommodation:</label>

	<%--<FCK:editor instanceName="trainingProposal.accommodation" height="100">
								<jsp:attribute name="value">${trainingProposal.accommodation}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.accommodation"
		name="trainingProposal.accommodation"
		value="%{trainingProposal.accommodation}" />
	<ckeditor:replace replace="trainingProposal.accommodation"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />

	<label>Payment Information:</label>

	<%--<FCK:editor instanceName="trainingProposal.payment" height="100">
							<jsp:attribute name="value">${trainingProposal.payment}</jsp:attribute>
							</FCK:editor>--%>
	<s:textarea id="trainingProposal.payment"
		name="trainingProposal.payment" value="%{trainingProposal.payment}" />
	<ckeditor:replace replace="trainingProposal.payment"
		basePath="${pageContext.servletContext.contextPath}/script/ckeditor/" />

	<label>Application deadline*:</label>
	<iita:datepicker id="deadline" name="trainingProposal.deadline"
		cssClass="form-control" value="%{trainingProposal.deadline}"
		format="dd/MM/yyyy" />
	<span id="error" style="display: none;">Choose a valid <span
		style="color: red;">date</span>!
	</span>

	<h2 class="page-header">Location/Venue Information:</h2>

	<table class="table-responsive table">

		<thead>
			<tr>
				<th align="left">Country</th>
				<th align="left">Venue/Location:</th>
				<th align="left">Starts:</th>
				<th align="left">Ends:</th>
			</tr>
		</thead>
		<s:if test="trainingProposal.trainingLocations.size()>0">
			<s:iterator value="trainingProposal.trainingLocations"
				status="status">
				<s:set name="locIndex" value="#status.index" />
				<tr>
					<td><s:select
							name="trainingProposal.trainingLocations[%{locIndex}].country"
							list="#{'Afghanistan':'Afghanistan','�land Islands':'�land Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','C�te d`Ivoire':'C�te d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Cura�ao':'Cura�ao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','R�union':'R�union','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barth�lemy':'Saint-Barth�lemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}"
							value="%{country}" headerKey="" cssClass="form-control"
							headerValue="--Select country--" /></td>
					<td><s:textfield
							name="trainingProposal.trainingLocations[%{locIndex}].venue"
							cssClass="form-control" value="%{venue}" /></td>

					<td><iita:datepicker
							name="trainingProposal.trainingLocations[%{locIndex}].startDate"
							value="%{startDate}" cssClass="mthyrpicker form-control" /></td>
					<td><iita:datepicker
							name="trainingProposal.trainingLocations[%{locIndex}].endDate"
							value="%{endDate}" cssClass="mthyrpicker form-control" /></td>
				</tr>
			</s:iterator>
		</s:if>
		<tr>
			<td><s:select emptyOption=""
					name="trainingProposal.trainingLocations[%{trainingProposal==null || trainingProposal.trainingLocations==null ? 0 : trainingProposal.trainingLocations.size}].country"
					list="#{'Afghanistan':'Afghanistan','�land Islands':'�land Islands','Albania':'Albania','Algeria':'Algeria','American Samoa':'American Samoa','Andorra':'Andorra','Angola':'Angola','Anguilla':'Anguilla','Antigua and Barbuda':'Antigua and Barbuda','Argentina':'Argentina','Armenia':'Armenia','Aruba':'Aruba','Australia':'Australia','Austria':'Austria','Azerbaijan':'Azerbaijan','Bahamas':'Bahamas','Bahrain':'Bahrain','Bangladesh':'Bangladesh','Barbados':'Barbados','Belarus':'Belarus','Belgium':'Belgium','Belize':'Belize','Benin':'Benin','Bermuda':'Bermuda','Bhutan':'Bhutan','Bolivia (Plurinational State of)':'Bolivia (Plurinational State of)','Bonaire, Saint Eustatius and Saba':'Bonaire, Saint Eustatius and Saba','Bosnia and Herzegovina':'Bosnia and Herzegovina','Botswana':'Botswana','Brazil':'Brazil','British Virgin Islands':'British Virgin Islands','Brunei Darussalam':'Brunei Darussalam','Bulgaria':'Bulgaria','Burkina Faso':'Burkina Faso','Burundi':'Burundi','Cabo Verde':'Cabo Verde','Cambodia':'Cambodia','Cameroon':'Cameroon','Canada':'Canada','Cayman Islands':'Cayman Islands','Central African Republic':'Central African Republic','Chad':'Chad','Channel Islands':'Channel Islands','Chile':'Chile','China':'China','China,  Hong Kong Special Administrative Region':'China,  Hong Kong Special Administrative Region','China, Macao Special Administrative Region':'China, Macao Special Administrative Region','Colombia':'Colombia','Comoros':'Comoros','Congo':'Congo','Cook Islands':'Cook Islands','Costa Rica':'Costa Rica','C�te d`Ivoire':'C�te d`Ivoire','Croatia':'Croatia','Cuba':'Cuba','Cura�ao':'Cura�ao','Cyprus':'Cyprus','Czech Republic':'Czech Republic','Democratic People`s Republic of Korea':'Democratic People`s Republic of Korea','Democratic Republic of the Congo':'Democratic Republic of the Congo','Denmark':'Denmark','Djibouti':'Djibouti','Dominica':'Dominica','Dominican Republic':'Dominican Republic','Ecuador':'Ecuador','Egypt':'Egypt','El Salvador':'El Salvador','Equatorial Guinea':'Equatorial Guinea','Eritrea':'Eritrea','Estonia':'Estonia','Ethiopia':'Ethiopia','Faeroe Islands':'Faeroe Islands','Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)','Fiji':'Fiji','Finland':'Finland','France':'France','French Guiana':'French Guiana','French Polynesia':'French Polynesia','Gabon':'Gabon','Gambia':'Gambia','Georgia':'Georgia','Germany':'Germany','Ghana':'Ghana','Gibraltar':'Gibraltar','Greece':'Greece','Greenland':'Greenland','Grenada':'Grenada','Guadeloupe':'Guadeloupe','Guam':'Guam','Guatemala':'Guatemala','Guernsey':'Guernsey','Guinea':'Guinea','Guinea-Bissau':'Guinea-Bissau','Guyana':'Guyana','Haiti':'Haiti','Holy See':'Holy See','Honduras':'Honduras','Hungary':'Hungary','Iceland':'Iceland','India':'India','Indonesia':'Indonesia','Iran (Islamic Republic of)':'Iran (Islamic Republic of)','Iraq':'Iraq','Ireland':'Ireland','Isle of Man':'Isle of Man','Israel':'Israel','Italy':'Italy','Jamaica':'Jamaica','Japan':'Japan','Jersey':'Jersey','Jordan':'Jordan','Kazakhstan':'Kazakhstan','Kenya':'Kenya','Kiribati':'Kiribati','Kuwait':'Kuwait','Kyrgyzstan':'Kyrgyzstan','Lao People`s Democratic Republic':'Lao People`s Democratic Republic','Latvia':'Latvia','Lebanon':'Lebanon','Lesotho':'Lesotho','Liberia':'Liberia','Libya':'Libya','Liechtenstein':'Liechtenstein','Lithuania':'Lithuania','Luxembourg':'Luxembourg','Madagascar':'Madagascar','Malawi':'Malawi','Malaysia':'Malaysia','Maldives':'Maldives','Mali':'Mali','Malta':'Malta','Marshall Islands':'Marshall Islands','Martinique':'Martinique','Mauritania':'Mauritania','Mauritius':'Mauritius','Mayotte':'Mayotte','Mexico':'Mexico','Micronesia (Federated States of)':'Micronesia (Federated States of)','Monaco':'Monaco','Mongolia':'Mongolia','Montenegro':'Montenegro','Montserrat':'Montserrat','Morocco':'Morocco','Mozambique':'Mozambique','Myanmar':'Myanmar','Namibia':'Namibia','Nauru':'Nauru','Nepal':'Nepal','Netherlands':'Netherlands','New Caledonia':'New Caledonia','New Zealand':'New Zealand','Nicaragua':'Nicaragua','Niger':'Niger','Nigeria':'Nigeria','Niue':'Niue','Norfolk Island':'Norfolk Island','Northern Mariana Islands':'Northern Mariana Islands','Norway':'Norway','Oman':'Oman','Pakistan':'Pakistan','Palau':'Palau','Panama':'Panama','Papua New Guinea':'Papua New Guinea','Paraguay':'Paraguay','Peru':'Peru','Philippines':'Philippines','Pitcairn':'Pitcairn','Poland':'Poland','Portugal':'Portugal','Puerto Rico':'Puerto Rico','Qatar':'Qatar','Republic of Korea':'Republic of Korea','Republic of Moldova':'Republic of Moldova','R�union':'R�union','Romania':'Romania','Russian Federation':'Russian Federation','Rwanda':'Rwanda','Saint-Barth�lemy':'Saint-Barth�lemy','Saint Helena':'Saint Helena','Saint Kitts and Nevis':'Saint Kitts and Nevis','Saint Lucia':'Saint Lucia','Saint-Martin (French part)':'Saint-Martin (French part)','Saint Pierre and Miquelon':'Saint Pierre and Miquelon','Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines','Samoa':'Samoa','San Marino':'San Marino','Sao Tome and Principe':'Sao Tome and Principe','Sark':'Sark','Saudi Arabia':'Saudi Arabia','Senegal':'Senegal','Serbia':'Serbia','Seychelles':'Seychelles','Sierra Leone':'Sierra Leone','Singapore':'Singapore','Sint Maarten (Dutch part)':'Sint Maarten (Dutch part)','Slovakia':'Slovakia','Slovenia':'Slovenia','Solomon Islands':'Solomon Islands','Somalia':'Somalia','South Africa':'South Africa','South Sudan':'South Sudan','Spain':'Spain','Sri Lanka':'Sri Lanka','State of Palestine':'State of Palestine','Sudan':'Sudan','Suriname':'Suriname','Svalbard and Jan Mayen Islands':'Svalbard and Jan Mayen Islands','Swaziland':'Swaziland','Sweden':'Sweden','Switzerland':'Switzerland','Syrian Arab Republic':'Syrian Arab Republic','Tajikistan':'Tajikistan','Thailand':'Thailand','The former Yugoslav Republic of Macedonia':'The former Yugoslav Republic of Macedonia','Timor-Leste':'Timor-Leste','Togo':'Togo','Tokelau':'Tokelau','Tonga':'Tonga','Trinidad and Tobago':'Trinidad and Tobago','Tunisia':'Tunisia','Turkey':'Turkey','Turkmenistan':'Turkmenistan','Turks and Caicos Islands':'Turks and Caicos Islands','Tuvalu':'Tuvalu','Uganda':'Uganda','Ukraine':'Ukraine','United Arab Emirates':'United Arab Emirates','United Kingdom of Great Britain and Northern Ireland':'United Kingdom of Great Britain and Northern Ireland','United Republic of Tanzania':'United Republic of Tanzania','United States of America':'United States of America','United States Virgin Islands':'United States Virgin Islands','Uruguay':'Uruguay','Uzbekistan':'Uzbekistan','Vanuatu':'Vanuatu','Venezuela (Bolivarian Republic of)':'Venezuela (Bolivarian Republic of)','Viet Nam':'Viet Nam','Wallis and Futuna Islands':'Wallis and Futuna Islands','Western Sahara':'Western Sahara','Yemen':'Yemen','Zambia':'Zambia','Zimbabwe':'Zimbabwe'}"
					value="%{country}" headerKey="" cssClass="form-control"
					headerValue="--Select country--" /></td>
			<td><s:textfield cssClass="form-control"
					name="trainingProposal.trainingLocations[%{trainingProposal==null || trainingProposal.trainingLocations==null ? 0 : trainingProposal.trainingLocations.size}].venue"
					value="%{venue}" /></td>
			<td><iita:datepicker
					name="trainingProposal.trainingLocations[%{trainingProposal==null || trainingProposal.trainingLocations==null ? 0 : trainingProposal.trainingLocations.size}].startDate"
					value="" cssClass="mthyrpicker form-control" /></td>
			<td><iita:datepicker
					name="trainingProposal.trainingLocations[%{trainingProposal==null || trainingProposal.trainingLocations==null ? 0 : trainingProposal.trainingLocations.size}].endDate"
					value="" cssClass="mthyrpicker form-control" /></td>
		</tr>
		<tr>
			<td colspan="4"><a
				onclick="javascript: copyBudget($($(this).parentNode.parentNode).previous(), 3, 0); return false;">More
					location info +</a></td>
		</tr>
	</table>



	<table class="table table-responsive">
		<thead>
			<tr>
				<th align="left">Person</th>
				<th align="left">Email</th>
				<th align="left">Type</th>
				<th align="left">Note</th>
			</tr>
		</thead>
		<s:if test="trainingProposal.trainers.size()>0">
			<s:iterator value="trainingProposal.trainers" status="status">
				<s:set name="trainerIndex" value="#status.index" />
				<tr>
					<td><s:textfield
					cssClass="form-control"
							name="trainingProposal.trainers[%{trainerIndex}].names"
							value="%{person==null ? names : person.fullName}" /></td>
					<td><s:textfield
					cssClass="form-control"
							name="trainingProposal.trainers[%{trainerIndex}].email"
							value="%{email}" /></td>
					<td><s:select
					cssClass="form-control"
							name="trainingProposal.trainers[%{trainerIndex}].type"
							value="%{type}"
							list="@org.iita.trainingunit.model.Trainer$TrainerType@values()" /></td>
					<td><s:textarea
					cssClass="form-control"
							name="trainingProposal.trainers[%{trainerIndex}].notes"
							value="%{notes}" /></td>
				</tr>
			</s:iterator>
		</s:if>
		<tr>
			<td><s:textfield
			cssClass="form-control"
					name="trainingProposal.trainers[%{trainingProposal==null || trainingProposal.trainers==null ? 0 : trainingProposal.trainers.size}].names"
					value="%{names}" /></td>
			<td><s:textfield
			cssClass="form-control"
					name="trainingProposal.trainers[%{trainingProposal==null || trainingProposal.trainers==null ? 0 : trainingProposal.trainers.size}].email"
					value="%{email}" /></td>
			<td><s:select
			cssClass="form-control"
					name="trainingProposal.trainers[%{trainingProposal==null || trainingProposal.trainers==null ? 0 : trainingProposal.trainers.size}].type"
					value="%{type}"
					list="@org.iita.trainingunit.model.Trainer$TrainerType@values()" /></td>
			<td><s:textarea
			cssClass="form-control"
					name="trainingProposal.trainers[%{trainingProposal==null || trainingProposal.trainers==null ? 0 : trainingProposal.trainers.size}].notes"
					value="%{notes}" /></td>
		</tr>
		<tr>
			<td><a
				onclick="javascript: copyTrainer($($(this).parentNode.parentNode).previous(), 3, 0); return false;">More
					trainers +</a></td>
			<td colspan="2" />
		</tr>
	</table>

	<div class="button-bar" style="margin: 10px 0px 0px 0px;">
		<s:submit value="Save Proposal" cssClass="btn btn-success"
			onclick="javascript: __date();" />
		<s:submit action="submit-proposal" cssClass="btn btn-success"
			onclick="javascript: return confirm('Submit this proposal anyway?');"
			value="Submit proposal" />
		<s:if
			test="trainingProposal.status!=@org.iita.trainingunit.announcements.model.TrainingProposal$STATUS@SUBMITTED">
			<s:submit action="trainingproposaldelete" cssClass="btn btn-success"
				onclick="javascript: return confirm('Delete this proposal anyway?');"
				cssStyle="color: Red;" value="Delete record" />
		</s:if>
	</div>

</s:form>