<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="/common/taglibs.jsp"%>


	<div class=" col col-sm-12 actionMessage">
		<s:form id="evaluation" namespace="/staff" action="evaluation" method="post">
			<s:if test="id!=null">
				<s:hidden name="id" value="%{id}" />
				<s:if test="evaluationId!=null">
					<s:hidden name="evaluationId" value="%{evaluationId}" />
				</s:if>
			</s:if>
			
			<div><em>* <font style="color:#ff0000">means mandatory fields</font></em></div>
			<table class="inputform">
			    <colgroup>
						<col width="200px" />
						<col />
					</colgroup>
			        <tr>
			            <td></td>
			            <td>
			            	<s:if test="sd!=null && sd.evaluation.evaluationStatus==@org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation$EVALUATIONSTATUS@OPEN">
		           			<s:submit cssClass="btn btn-primary pull-right" action="evaluation!finalized" value="Finalize Evaluation" onclick="if(confirm('Submit your application evaluation form anyway?')){return true;}else{return false;}" />
		           		</s:if>
		           		<s:submit cssClass="btn btn-primary pull-right" value="Continue Editing" />
			            </td>
			        </tr>
			</table>
			<div>
				<div>
					<h3>Feedback by Applicant (After Training)</h3>
				    <table id="evaluationTable" class="table">
				    	<tr>
							<td>
								<table id="evaluationTable" class="table">
									<colgroup>
										<col />
										<col width="150px" />
										<col width="150px" />
										<col width="150px" />
										<col width="150px" />
										<col width="150px" />
									</colgroup>
									<thead>
										<tr>
											<th></th>
											<th>Strongly Agree</th>
											<th>Agree</th>
											<th>Neutral</th>
											<th>Disagree</th>
											<th>Strongly Disagree</th>
										</tr>
									</thead>
										
							    	<tr>
							    		<td>The training objectives were met? <em><font style="color:#ff0000">*</font></em></td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="objMet1" name="objMet" value="%{objMet}" list="#{'STRONGLYAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="objMet2" name="objMet" value="%{objMet}" list="#{'AGREE':''}" />     
									                </div>
								                </div>
								            </div>
								        </td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="objMet4" name="objMet" value="%{objMet}" list="#{'NEUTRAL':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="objMet3" name="objMet" value="%{objMet}" list="#{'DISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="objMet5" name="objMet" value="%{objMet}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								    
								    <tr>
							    		<td>The training enhanced my knowledge and skills? <em><font style="color:#ff0000">*</font></em></td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="skillEnhanced1" name="skillEnhanced" value="%{skillEnhanced}" list="#{'STRONGLYAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="skillEnhanced2" name="skillEnhanced" value="%{skillEnhanced}" list="#{'AGREE':''}" />     
									                </div>
								                </div>
								            </div>
								        </td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="skillEnhanced4" name="skillEnhanced" value="%{skillEnhanced}" list="#{'NEUTRAL':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="skillEnhanced3" name="skillEnhanced" value="%{skillEnhanced}" list="#{'DISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="skillEnhanced5" name="skillEnhanced" value="%{skillEnhanced}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								    
								    <tr>
							    		<td>Information could be applied to practice? <em><font style="color:#ff0000">*</font></em></td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="appliedPractice1" name="appliedPractice" value="%{appliedPractice}" list="#{'STRONGLYAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="appliedPractice2" name="appliedPractice" value="%{appliedPractice}" list="#{'AGREE':''}" />     
									                </div>
								                </div>
								            </div>
								        </td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="appliedPractice4" name="appliedPractice" value="%{appliedPractice}" list="#{'NEUTRAL':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="appliedPractice3" name="appliedPractice" value="%{appliedPractice}" list="#{'DISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="appliedPractice5" name="appliedPractice" value="%{appliedPractice}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								    
								    <tr>
							    		<td>The course will be of value to me in my role? <em><font style="color:#ff0000">*</font></em></td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="valueRole1" name="valueRole" value="%{valueRole}" list="#{'STRONGLYAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="valueRole2" name="valueRole" value="%{valueRole}" list="#{'AGREE':''}" />     
									                </div>
								                </div>
								            </div>
								        </td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="valueRole4" name="valueRole" value="%{valueRole}" list="#{'NEUTRAL':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="valueRole3" name="valueRole" value="%{valueRole}" list="#{'DISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
										<td>
											<div class="row">
								            	<div class="form-group">
									                <div class="col-xs-12 col-md-12">
									                	<s:radio id="valueRole5" name="valueRole" value="%{valueRole}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								</table>
							</td>
						</tr>
				    	<tr>
							<td>
					            <div class="row">
					            	<div class="form-group">
						                <div class="col-xs-12 col-md-12">
						                	<label for="additionalComment" class="col-xs-12"><strong>Additional Comments</strong></label>
						                	<s:textarea cssClass="form-control" id="additionalComments" name="additionalComments" value="%{additionalComments}" />     
						                </div>
					                </div>
					            </div>
							</td>
						</tr>
				    </table>
				</div>
				<table class="inputform">
			    <colgroup>
						<col width="200px" />
						<col />
					</colgroup>
			        <tr>
			            <td></td>
			            <td>
			            	<s:if test="sd!=null && sd.evaluation.evaluationStatus==@org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation$EVALUATIONSTATUS@OPEN">
		           			<s:submit cssClass="btn btn-primary pull-right" action="evaluation!finalized" value="Finalize Evaluation" onclick="if(confirm('Submit your application evaluation form anyway?')){return true;}else{return false;}" />
		           		</s:if>
		           		<s:submit cssClass="btn btn-primary pull-right" value="Continue Editing" />
			            </td>
			        </tr>
			</table>
			</div>
		</s:form>
		<div class="clearfix">&nbsp;</div>
	</div>
