<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>External Trainings</title>
</head>
<body>


	<div class="container-fluid">
		<s:form id="" namespace="" action="" method="post">
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
								onclick="if(confirm('Submit your application evaluation form anyway?')){return true;}else{return false;}" />
						</s:if> <s:submit cssClass="btn btn-primary pull-right"
							value="Continue Editing" /></td>
				</tr>
			</table>

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
											<s:textfield cssClass="form-control" id="title" name=""
												value="%{training.title}" />
										</div>
									</div>
								</div> <!-- Surname.-->
								<div class="row">
									<div class="form-group">
										<div class="col-xs-12 col-md-6">
											<label for="Surname" class="col-xs-6"><strong>Surname:<font
													style="color: #ff0000">*</font></strong></label>
											<s:textfield cssClass="form-control" id="Surname" name=""
												value="%{training.lastName}" />
										</div>

										<!-- First name-->
										<div class="col-xs-12 col-md-6">
											<label for="firstname" class="col-xs-6"><strong>First
													Name: <font style="color: #ff0000">*</font>
											</strong></label>
											<s:textfield cssClass="form-control" id="firstname" name=""
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
			
				           	  				   <s:radio id="gender" name="gender" value="%{training.gender}" list="#{'Female':'FEMALE','Male':'MALE'}" />
				                
										</div>



										<!--Nationality-->
										<div class="col-xs-12 col-md-6">
											<label for="firstname" class="col-xs-6"><strong>Nationality:
													<font style="color: #ff0000">*</font>
											</strong></label>
											<s:textfield cssClass="form-control" id="Nationality" name=""
												value="%{training.country}" />
										</div>
									</div>
								</div>



								<div class="row">
									<!-- Job Title.-->
									<div class="col-xs-12 col-md-12">
										<label for="jobtitle" class="col-xs-6"><strong>Job
												Title: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="jobtitle" name=""
											value="%{training.jobTitle}" />
									</div>
								</div>

								<div class="row">
									<!-- Office Address.-->
									<div class="col-xs-12 col-md-12">
										<label for="Organization" class="col-xs-6"><strong>Organization:<font
												style="color: #ff0000">*</font></strong></label>
										<s:textfield cssClass="form-control" id="Organisation"
											name="" value="%{training.organization}" />
									</div>
								</div>


								<div class="row">
									<!-- Office Address.-->
									<div class="col-xs-12 col-md-12">
										<label for="OfficeAddress" class="col-xs-6"><strong>Office
												Address: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="OfficeAddress"
											name="" value="%{training.officeAddress}" />
									</div>
								</div>


								<div class="row">
									<!-- Phone.-->
									<div class="col-xs-12 col-md-12">
										<label for="Phone" class="col-xs-6"><strong>Phone
												(preferable Mobile):<font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="Phone" name=""
											value="%{training.phone}" />
									</div>
								</div>


								<div class="row">
									<!-- E-mail Address: .-->
									<div class="col-xs-12 col-md-12">
										<label for="Email" class="col-xs-6"><strong>E-mail
												Address: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="Email" name=""
											value="%{training.email}" />
									</div>
								</div>



								<div class="row">
									<!-- Most recent Education: .-->
									<div class="col-xs-12 col-md-12">
										<label for="recentEduc" class="col-xs-6"><strong>Most
												recent Education: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="recentEduc" name=""
											value="%{training.educationalInfo}" />
									</div>
								</div>


								<div class="row">
									<!-- Relevant areas of interest .-->
									<div class="col-xs-12 col-md-12">
										<label for="interest" class="col-xs-6"><strong>Relevant
												areas of interest: <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="interest" name=""
											value="%{training.RelevantAreasInterest}" />
									</div>
								</div> <!-- Please tell us what you hope to gain from this course.-->
								<div class="row">
									<div class="form-group">
										<div class="col-xs-12 col-md-12">
											<label for="gainfromthiscourse" class="col-xs-12"><strong>Please
													tell us what you hope to gain from this course.</label>
											<s:textarea cssClass="form-control" id="" name="" value="%{training.gaintFromCourse}" />
										</div>
									</div>
								</div>


								<div class="row">
									<!-- Name in Full:  .-->

									<div class="col-xs-12 col-md-12">
										<label for="fullName" class="col-xs-6"><strong>Name
												in Full: : <font style="color: #ff0000">*</font>
										</strong></label>
										<s:textfield cssClass="form-control" id="fullName" name=""
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