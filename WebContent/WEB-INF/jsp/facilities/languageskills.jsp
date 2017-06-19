<%@ include file="/common/taglibs.jsp"%>

<h3>LANGUAGE(S) PROFICIENCY</h3>
<div>
		    <table class="inputform" id="languageskills">
		    <colgroup>
				<col width="200px" />
				<col />
				<col />
				<col />
				<col />
			</colgroup>
			<tr>
				<td><em>Spoken Languages</em></td>
				<td><em>Mother tongue</em></td>
				<td><em>English:</em></td>
				<td><em>French:</em></td>
				<td><em>Portuguese:</em></td>
				<td><em>Local/Others (Indicate):</em></td>
			</tr>
			<tr>
				<td></td>
				<td><s:textfield cssClass="form-control" name="cdoGraduateApplication.MotherTongue" value="%{cdoGraduateApplication.MotherTongue}" /></td>
				<td>
					<s:select name="cdoGraduateApplication.englishLanguage" cssClass="form-control"
					list="#{'Nil':'Nil','Average':'Average','Good':'Good','Excellent':'Excellent'}" 
					value="%{cdoGraduateApplication.englishLanguage}" headerKey="" headerValue="--Select--" />
				</td>
				<td>
					<s:select name="cdoGraduateApplication.frenchLanguage" cssClass="form-control"
					list="#{'Nil':'Nil','Average':'Average','Good':'Good','Excellent':'Excellent'}" 
					value="%{cdoGraduateApplication.frenchLanguage}" headerKey="" headerValue="--Select--" />
				</td>
				<td>
					<s:select name="cdoGraduateApplication.portugueseLanguage" cssClass="form-control"
					list="#{'Nil':'Nil','Average':'Average','Good':'Good','Excellent':'Excellent'}" 
					value="%{cdoGraduateApplication.portugueseLanguage}" headerKey="" headerValue="--Select--" />
				</td>
				<td><s:textfield name="cdoGraduateApplication.otherLanguage" cssClass="form-control" value="%{cdoGraduateApplication.otherLanguage}" /></td>
			</tr>
		    </table>
		</div>
