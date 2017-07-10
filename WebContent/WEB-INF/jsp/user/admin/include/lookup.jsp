<%@ include file="/common/taglibs.jsp"%>

<table class="data-listing">
	<thead>
		<tr>
			<td><label>Identifier</label></td>
		</tr>
	</thead>
	<s:iterator value="user.lookups" status="status">
		<tr>
			<td><s:textfield name="lookups" value="%{identifier}" label="Identifier" cssStyle="width: 100%" cssClass="form-control"/></td>
		</tr>
	</s:iterator>
	<tr>
		<td><s:textfield name="lookups" value="" label="Identifier" cssStyle="width: 100%" cssClass="form-control"/></td>
	</tr>
</table>