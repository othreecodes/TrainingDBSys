<%@ include file="/common/taglibs.jsp"%>

<s:form action="uploadpassport" namespace="/applicant" method="POST" enctype="multipart/form-data">
<s:hidden name="bioId" value="%{cdoBioData.id}" />
<div cssClass="panel alert alert-success" >
<table align="right">
        <colgroup>
			<col width="100" />
			<col />
		</colgroup>
			<tr>
            	<td>Photo:*</td>
            	<td>
            		<s:file cssClass="form-control alert-warning" name="uploads" />
            		<s:submit cssClass="form-control alert-success" name="Upload ..." />
            	</td>
            		
            </tr>
        </table>
       </div>
</s:form>