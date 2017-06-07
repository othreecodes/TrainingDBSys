<html lang="en">
<head>
    <title>Sabbatical Application Form</title>
</head>
<body>
	<div class="container-fluid">
	
	<h2 class="text-center">
				<strong> Application Form for Use of IITA Research
					Facilities</strong>
			</h2>

			<br>
			<div class="row">
				<div class="col-md-8">
					<p>
						<strong>Instructions:</strong> Completed application forms should
						be accompanied by a letter of interest, a letter of recommendation
						and permission from current head of institution, curriculum vitae,
						and a research proposal of not more than 2 pages.
					</p>
					<p>
						Fill in the shaded fields. Use the <em>TAB</em> key on the
						keyboard or your mouse to move between fields.
					</p>

					<p>
						<strong>Le formulaire peut être rempli soit en français,
							soit en anglais.</strong>
					</p>
				</div>
	
		<s:include value="/WEB-INF/jsp/include/sabbatical-biodata-details.jsp" />
			
		<s:include value="/WEB-INF/jsp/include/educationandtraining-form.jsp" />
			
		<s:include value="/WEB-INF/jsp/include/otherstudiesandtraining-form.jsp" />
			
		<s:include value="/WEB-INF/jsp/include/sabbatical-administrativeexperience-details.jsp" />
			
		<s:include value="languageskills.jsp" />
		
		<s:include value="/WEB-INF/jsp/include/sabbaticalprojectsummary-form.jsp" />
		
		<s:include value="/WEB-INF/jsp/include/sabbaticalsupporttype-form.jsp" />
		
		<table class="inputform">
				<colgroup>
					<col width="200px" />
					<col />
				</colgroup>
				<tr>
					<td></td>
					<td><s:submit cssClass="btn btn-primary pull-right"
							action="save-form" value="Submit Form"
							onclick="if(confirm('Submit your Registeration form ?')){return true;}else{return false;}" />
				</tr>
			</table>
		
		

	</div>
</body>
</html>