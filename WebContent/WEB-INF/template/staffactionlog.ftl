<#if staffDev.actionLog??>

Approvals
<#list staffDev.actionLog as log>	- ${log.sysDate?date}: ${log.username} ${log.action}
</#list>
</#if>