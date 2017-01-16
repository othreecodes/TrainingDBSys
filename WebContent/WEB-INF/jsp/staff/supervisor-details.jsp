<%@ include file="/common/taglibs.jsp"%>


					<h3>SECTION C:- TO BE COMPLETED BY HEAD OF UNIT/SUPERVISOR</h3>
				    <table id="supervisorTable" class="table">
				    	<tr>
							<td>
					            <strong>State why you support the applicant for this course:</strong>
					            <s:if test="staffDev!=null">
						        	<s:property id="supportApplicant" value="staffDev.supportApplicant" />  
						        </s:if>  
						        <s:else>
						        	<s:property id="supportApplicant" value="sd.supportApplicant" /> 
						        </s:else>
						    </td>
						</tr>
						<tr>
						    <td>            
						          <strong>Has replacement staff been organized for the applicant to attend this course?:</strong>
							       <s:if test="staffDev!=null">
							        	<s:property id="replacementStaff" value="staffDev.replacementStaff" />
							        </s:if>  
							        <s:else>
							        	<s:property id="replacementStaff" value="sd.replacementStaff" />
							        </s:else>
							</td>
						</tr>
				    </table>
