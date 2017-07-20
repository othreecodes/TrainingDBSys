<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User of Facilities</title>
</head>
<body>

	<div class="container-fluid">
		<s:form id="" namespace="/" action="save-facilities" method="post">
			<s:if test="id!=null">
				<s:hidden name="id" value="%{id}" />
				<s:if test="">
					<s:hidden name="" value="%{}" />
				</s:if>
			</s:if>




			<h2 class="text-center">
				<strong> Application Form for Use of IITA Research
					Facilities</strong>
			</h2>

			<br>
			<br>
			<br>


			<div class="row">
				<div class="col-xs-12 alert alert-warning">
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
						<strong>Le formulaire peut être rempli soit en
							français, soit en anglais.</strong>
					</p>
				<hr>
					<em>* <font style="color: #ff0000">means mandatory
							fields</font></em>
				</div>

			</div>

			<br>


			<!--------------------------------------- PART II. FACILITIES TO BE USED   .------------------------------>

<div class="col-md-9">
			<table id="" class="table table-stripped">
				<tr>
					<fieldset>
						<legend>
							<font style="color: #d3d3d3">PART II. FACILITIES TO BE
								USED : </font>
						</legend>

						
						<div class="row">
							<div class="col-md-12">
								<label for="Synopsis" class=""><strong> Provide
										Synopsis of Research Work: <font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="Synopsis"
									name="useOfFacilities.synopsis" value="%{useOfFacilities.synopsis}" />
							</div>
						</div>




						<div class="row">
							<div class="col-md-12">
								<label for="summary" class=""><strong> Short
										summary of research objective: <font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="objective" name="useOfFacilities.objective"
									value="%{useOfFacilities.objective}" />
							</div>
						</div>



						<div class="row">
							<div class="col-md-12">
								<label for="Required" class=""><strong> State
										Facilities Required: (e.g. Bioscience Laboratory) : <font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="facilitesRequired"
									name="useOfFacilities.facilitesRequired" value="%{useOfFacilities.facilitesRequired}" />
							</div>
						</div>



						<div class="row">
							<div class="col-md-6">
								<label for="last" class=""><strong>How long
										will your research work last?: (months) <font
										style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="months" name="useOfFacilities.months"
									value="%{useOfFacilities.months}" />
							</div>

							<div class="col-md-6">
								<label for="start" class=""><strong>When do you
										wish to start your research work?: (MM/YYYY) <font
										style="color: #ff0000">*</font>
								</strong></label>
								
							<s:textfield cssClass="form-control" id="start"
									name="useOfFacilities.start" value="%{useOfFacilities.start}" />
							</div>
						</div>




						<div class="row">
							<div class="col-md-12">
								<label for="Previous" class=""><strong>
										Previous Collaboration with IITA: <font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="previousCollaborations"
									name="useOfFacilities.previousCollaborations" value="%{useOfFacilities.previousCollaborations}" />
							</div>
						</div>


						<div class="row">
							<div class="col-md-12">
								<label for="Location" class=""><strong>
										Location: <font style="color: #ff0000">*</font>
								</strong></label>
								
								<s:textfield cssClass="form-control" id="location"
									name="useOfFacilities.location" value="%{useOfFacilities.location}" />
							</div>
						</div>




						<div class="row">
							<div class="col-md-6">
								<label for="Contacts" class=""><strong> IITA
										Contacts: <font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="iitaContacts"
									name="useOfFacilities.iitaContacts" value="%{useOfFacilities.iitaContacts}" />
							</div>

							<div class="col-md-6">
								<label for="email" class=""><strong>IITA
										Contact email(s):<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield cssClass="form-control" id="contactEmails" name="useOfFacilities.contactEmails"
									value="%{useOfFacilities.contactEmails}" />
							</div>
						</div>
				</tr>
				</fieldset>
			</table>


<hr>

<table id="" class="table ">
				<tr>
					<fieldset>
						<fieldset>
						<legend>
							<font style="color: #d3d3d3">SOURCE OF FUNDING: </font>
						</legend>
						
						
						<div class="row">
							<div class="col-md-12">
								<label for="Synopsis" class=""><strong> Sponsor/Project:<font style="color: #ff0000">*</font>
								</strong></label>
								<s:url namespace="/ajax" action="public-ajax" id="xx" />
									<iita:autocompleter cssClass="organization form-control"
										name="organizationId" id="tra.organizationId" listKey="id"
										listValue="title" url="%{xx}"
										method="autocompleteOrganization"
										submitTextTo="organizationName" />
							</div>
						</div>


						<div class="row">
							<div class="col-md-12">
								<label for="Location" class=""><strong>Sponsor type: <font style="color: #ff0000">*</font>
								</strong></label>
								<s:select name="sponsorType" cssClass="form-control"
										list="@org.iita.trainingunit.model.Funding$SponsorType@values()" /></td>
						
							</div>
						</div>




						<div class="row">
							<div class="col-md-6">
								<label for="Contacts" class=""><strong> Cost Center: <font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield name="costCenter" cssClass="form-control" />
							</div>

							<div class="col-md-6">
								<label for="email" class=""><strong>Estimated Cost (USD):<font style="color: #ff0000">*</font>
								</strong></label>
								<s:textfield name="estimatedCost"
										cssClass="form-control" />
							</div>
						</div>
				</tr>
				</fieldset>
			</table>

</div>
<!-- close use of facilities form on the left -->




<!--open personal details on the right -->
<div class="col-md-3 pull-right">
		<s:include value="/WEB-INF/jsp/include/personal-data.jsp" />
		<s:if test="cdoGraduateApplication.id!=null">
			<table class="table">
			    <colgroup>
						<col />
					</colgroup>
				        <tr>
				            <td>
				            	<h2>Application documents</h2>
								<s:if test="cdoGraduateApplication.documents!=null">
									<ul class="file-list">
										<s:iterator value="cdoGraduateApplication.documents">
											<li class="file"><s:include value="/WEB-INF/jsp/document/entitydocument-applicant-quick.jsp" /></li>
										</s:iterator>
									</ul>
								</s:if>
								<p>Attach document to application:</p>
								<iita:fileupload action="application-document!upload" value="Upload files" queryParams="entityId=${cdoGraduateApplication.id}" />
				            </td>
				        </tr>
			</table>
		</s:if>
</div>


<div class="row success pull-right">
					<s:submit cssClass="btn btn-primary pull-right"
							action="save-form" value="Submit Form"
							onclick="if(confirm('Submit your Registeration form ?')){return true;}else{return false;}" />
		</div>		
			
		</s:form>
		<div class="clearfix">&nbsp;</div>
	</div>

</body>
</html>