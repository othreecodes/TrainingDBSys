<%@ include file="/common/taglibs.jsp"%>


	<div class=" col col-sm-12 actionMessage">
		<s:form id="supervisorapprove" namespace="/staff" action="supervisor" method="post">
			<s:set name="staffDev" value="%{sd}" />
			<s:if test="sd!=null">
				<s:hidden name="id" value="%{staffDev.id}" />
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
			            	<s:submit cssClass="btn btn-primary pull-right" value="Submit form" onclick="if(confirm('Submit staff application form?')){return true;}else{return false;}" /> 
			            </td>
			        </tr>
			</table>
			<div>
				<div>
					<h3>SECTION C:- TO BE COMPLETED BY HEAD OF UNIT/SUPERVISOR</h3>
				    <table id="supervisorTable" class="table">
				    	<tr>
							<td>
								
				
					            <div class="row">
					            	<div class="form-group">
						                <div class="col-xs-12 col-md-12">
						                	<label for="supportApplicant" class="col-xs-12"><strong>State why you support the applicant for this course:</strong></label>
						                	<s:textarea cssClass="form-control" id="supportApplicant" name="staffDev.supportApplicant" value="%{staffDev.supportApplicant}" />     
						                </div>
						                
						                <div class="col-xs-12 col-md-12">
							                <label for="replacementStaff" class="col-xs-12"><strong>Has replacement staff been organized for the applicant to attend this course?:</strong></label>
							                <s:radio id="replacementStaff" name="staffDev.replacementStaff" value="%{staffDev.replacementStaff}" list="#{'Yes':'Yes','No':'No'}" />
							            </div>
					                </div>
					            </div>
							</td>
						</tr>
				    </table>
				</div>
			</div>
		</s:form>
		<div class="clearfix">&nbsp;</div>
	</div>
