<%@ include file="/common/taglibs.jsp"%>
<%-- <%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>

<html lang="en">
<head>
    <title>Training Application</title>
</head>
<body>
<div class="container-fluid">
<h3>Application for: <s:if test="announcement!=null"><s:property value="announcement.title" /></s:if><s:elseif test="trainingOption!=null"><s:property value="trainingOption" /> Training</s:elseif></h3>
				
	<div class="row-fluid">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 classWithPad">
			<fieldset>
				<div class="alert alert-warning">
					Instructions: Completed application forms should be accompanied by an admission letter from the University, copies of degree and/or diploma certificates, transcripts and two letters of recommendation (one from either your supervisor or head of department)
				</div>		
				<s:form action="savedraft" method="POST" cssClass="form-horizontal">
				<s:hidden name="announcementId" value="%{announcement.id}" />
				<s:hidden name="trainingOption" value="%{trainingOption}" />
				<s:if test="appStarter!=null">
				<s:hidden name="appStarterId" value="%{appStarter.id}" />
				</s:if>
				<s:if test="user!=null">
					<s:hidden name="userPassord" value="%{userPassword}" />
				</s:if>
				<s:hidden name="id" value="%{cdoBioData.id}" />
				<s:hidden name="cdoBioData.version" value="%{cdoBioData.version}" />
				<div><em>* <font style="color:#ff0000">means mandatory fields</font></em></div>
				<div id="accordion">
					<s:include value="/WEB-INF/jsp/include/biodata-form.jsp" />
					
					<s:include value="/WEB-INF/jsp/include/nextofkin-form.jsp" />
				</div> 
				
				<table class="inputform">
				    <colgroup>
							<col />
						</colgroup>
				        <tr>
				            <td>
					            <div class="clearfix">&nbsp;</div>
					            <s:submit value="Save Draft & Continue" cssClass="btn btn-primary pull-right" />
					            <s:if test="user!=null">
					            	&nbsp;&nbsp;<s:submit cssClass="btn btn-danger pull-right" action="process-register" value="Proceed to registration" onclick="if(confirm('Submit your form and proceed anyway?')){return true;}else{return false;}" />
					            </s:if>
				            </td>
				        </tr>
				    </table>
				</s:form>
			</fieldset>
		</div>
	</div>
</div>


<script> 
$(function () {
	$(".datepicker").datepicker({ changeMonth: true,
        changeYear: true, dateFormat: 'dd/mm/yy'});
	
	$(".mthyrpicker").datepicker({ changeMonth: true,
        changeYear: true, dateFormat: 'mm/yy'});
	
    $(function () {
        $("#accordion").accordion({
            heightStyle: "content"
        });
    });
});</script>
</body>
</html>