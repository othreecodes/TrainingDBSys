<%@ include file="/common/taglibs.jsp"%>
<div class="partner quick">
<div><a href="<s:url action="partner/profile"/>?id=<s:property value="id" />"><s:property value="title" /></a> <s:if test="shortName!=null">(<s:property
		value="shortName" />)</s:if></div>
</div>