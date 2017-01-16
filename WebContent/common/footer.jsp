<%@ include file="/common/taglibs.jsp"%>


<footer class="row lighten-1">
<hr size="1" />
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<span style="font-size:12px;margin-left:10px;">
			Would you like to request IITA Support to organize a training? <a href="javascript:alert('Coming soon!')" target="_blank">Click here</a></span><br />
          	<span style="font-size:12px;margin-left:10px;">
          	Are you interested in agribusiness? <a href="javascript:alert('Coming soon!');">Click here</a></span><br />
			<span style="font-size:12px;margin-left:10px;">
			Private sector? <a href="javascript:alert('Coming soon!');">Click here</a>
			</span>
    	</div>
    </div>
	<hr size="1" />
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<span style="font-size:10px;margin-left:10px;">Copyright <a href="www.iita.org" target="_blank">IITA</a> 2016</span> <span style="float:right;font-size:10px;margin-right:10px;">Need technical help? Then contact the System Admin via <a href="mailto:software@iita.org">software@iita.org</a></span>
		</div>
         <s:action name="user/notification-quick" namespace="/" executeResult="true" ignoreContextParams="true" />
	</div>
		
	<%-- Render footer notificaiton messages, usually success messages --%>
	<s:if test="notificationMessages!=null && notificationMessages.size>0">
		<div id="notificationMessages">
			<s:iterator value="notificationMessages">
				<div class="notificationMessage"><s:property escape="false" /></div>
			</s:iterator>
		</div>
	</s:if>
			
	<div id="ajax-indicator" style="display: none;">
		<b>Please wait...</b> <img src="<c:url value="/img/ajax-ind-1.gif" />" />
	</div>
</footer>