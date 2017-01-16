<%@ include file="/common/taglibs.jsp"%>


<s:if test="staffDev.actionLog!=null && staffDev.actionLog.size>0">	
	<h3 id="action-log">Approvals</h3>
	<table class="data-listing">
		<colgroup>
			<col width="100px" />
			<col width="150px" />
			<col width="250px" />
			<col />
		</colgroup>
		<thead>
			<tr>
				<td>Date</td>
				<td class="identifying">Action</td>
				<td>Who</td>
				<td>Comment</td>
			</tr>
		</thead>
		<s:iterator value="staffDev.actionLog" status="status">
			<tr>
				<td><s:property value="sysDate" /></td>
				<td class="identifying"><s:property value="action" /></td>
				<td><s:property value="username" /></td>
				<td><s:property value="comment" /></td>
			</tr>
		</s:iterator>
	</table>
</s:if>