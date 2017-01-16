<%@ include file="/common/taglibs.jsp"%>


	<div class=" col col-sm-12 actionMessage">
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
											<th>Disagree</th>
											<th>Neutral</th>
											<th>Strongly Disagree</th>
										</tr>
									</thead>
										
							    	<tr>
							    		<td>The training objectives were met?</td>
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
									                	<s:radio id="objMet3" name="objMet" value="%{objMet}" list="#{'DISAGREE':''}" />     
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
									                	<s:radio id="objMet5" name="objMet" value="%{objMet}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								    
								    <tr>
							    		<td>The training enhanced my knowledge and skills?</td>
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
									                	<s:radio id="skillEnhanced3" name="skillEnhanced" value="%{skillEnhanced}" list="#{'DISAGREE':''}" />     
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
									                	<s:radio id="skillEnhanced5" name="skillEnhanced" value="%{skillEnhanced}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								    
								    <tr>
							    		<td>Information could be applied to practice?</td>
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
									                	<s:radio id="appliedPractice3" name="appliedPractice" value="%{appliedPractice}" list="#{'DISAGREE':''}" />     
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
									                	<s:radio id="appliedPractice5" name="appliedPractice" value="%{appliedPractice}" list="#{'STRONGLYDISAGREE':''}" />     
									                </div>
								                </div>
								            </div>
										</td>
								    </tr>
								    
								    <tr>
							    		<td>The course will be of value to me in my role?</td>
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
									                	<s:radio id="valueRole3" name="valueRole" value="%{valueRole}" list="#{'DISAGREE':''}" />     
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
						                	<label for="additionalComments" class="col-xs-12"><strong>Additional Comments</strong></label>
						                	<s:property id="additionalComments" value="%{additionalComments}" />     
						                </div>
					                </div>
					            </div>
							</td>
						</tr>
				    </table>
				</div>
			</div>
		<div class="clearfix">&nbsp;</div>
	</div>
