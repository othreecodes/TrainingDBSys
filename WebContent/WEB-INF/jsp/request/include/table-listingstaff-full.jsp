<%@ include file="/common/taglibs.jsp"%>

<table class="data-listing">
	<colgroup>
		<col width="50" />
		<col width="170px" />
		<col width="170px" />
		<col width="250px" />		
		<col />
	</colgroup>
	<thead>
		<tr>
			<td>#</td>
			<td>Owner</td>
			<td>Type</td>
			<td>Waiting For</td>
			<td>Course Applied</td>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="paged.results" status="status">
			<tr class="status-<s:property value="status" /> ht">
				<td><s:property value="#status.count + paged.startAt" /></td>
				<td><s:property value="biodata.owner.fullName" /><br /><small><s:property value="status" /></small></td>
				
				<td class="identifying"><s:property value="top.class.simpleName.substring(0, top.class.simpleName.indexOf('Development'))" /></td>
				
				<td>
					<s:iterator value="[1].waitingFor(top)" status="status">
						<s:property value="fullName" /><br/>
					</s:iterator>
				</td>
				
				<td>
					<s:if test="%{top instanceof org.iita.trainingunit.staff.model.StaffDevelopment}">
						<div>
							<a href="<s:url namespace="/staff" action="view" />?id=<s:property value="id" />">
								<s:if test="applyCourse==null || applyCourse==''">
									<s:property value="referenceNumber" />
								</s:if>
								<s:else>
									<s:property value="referenceNumber" />: <s:property value="applyCourse" />
								</s:else>
							</a>
						</div>
					</s:if>
				</td>
				
			</tr>
		</s:iterator>
	</tbody>
</table>