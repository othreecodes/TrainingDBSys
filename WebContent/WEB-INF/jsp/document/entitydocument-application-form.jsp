<%@ include file="/common/taglibs.jsp"%>
<s:set name="targetEntity" value="top.class.simpleName.substring(0, top.class.simpleName.indexOf('Document')).toLowerCase()" />
<s:form method="post" action="%{#targetEntity}-document-details!update">
	<s:hidden name="id" value="%{id}" />
	<table class="rawform">
	<colgroup><col width="120" /><col /></colgroup>
		<tr>
			<td class="ar">Title:</td>
			<td><s:textfield name="entityDocument.document.title" value="%{document.title}" /></td>
		</tr>
		<tr>
			<td class="ar">Type:</td>
			<td><s:textfield name="entityDocument.document.type" value="%{document.type}" /></td>
		</tr>
		<tr>
			<td />
			<td><s:submit value="Update" /> <s:submit value="Remove" action="%{#targetEntity}-document-details!remove" cssClass="button-delete" onclick="javascript: return confirm('Are you sure you want to remove this record?');" /></td>
		</tr>
	</table>
</s:form>