<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<title>Rehab ward</title>

<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<!-- <div class="navbar navbar-fixed-top"> -->
	<!--     <div class="navbar-inner"> -->
	<!--         <div class="container"> -->
	<!--             <a href="/" class="brand">Spring MVC and Hibernate Template</a> -->
	<!--             <a href="/" class="brand" id="heroku">by <strong>heroku</strong></a> -->
	<!--         </div> -->
	<!--     </div> -->
	<!-- </div> -->

	<div class="container">
		<div class="row">
			<div class="span8 offset2">
				<div class="page-header">
					<h1>Create patient</h1>
				</div>
				<form:form method="post" action="add" commandName="person"
					class="form-vertical">
					<div class="row">
						<div class="span4">
							<form:label path="firstName">First Name</form:label>
							<form:input path="firstName" data-validation="required"/>
						</div>
						<div class="span4">
							<form:label path="lastName">Last Name</form:label>
							<form:input path="lastName" data-validation="required"/>
						</div>
					</div>
					<div class="row">
						<div class="span4">
							<form:label path="crn">CRN</form:label>
							<form:input path="crn" data-validation="required"/>
						</div>
						<div class="span4">
							<form:label path="postCode">Post code</form:label>
							<form:input path="postCode" />
						</div>
					</div>
					<div class="row">
						<div class="span4">
							<form:label path="dob">Date of Birth</form:label>
							<form:input path="dob" placeholder="dd/mm/yyyy"
								class="datepicker" data-date-format="dd/mm/yyyy"
								data-validation="date" data-validation-format="dd/mm/yyyy"
								data-validation-help="Date format must be dd/mm/yyyy" />
						</div>
						<div class="span4">
							<form:label path="sex">Sex</form:label>
							<form:select path="sex">
								<form:option value="male">Male</form:option>
								<form:option value="female">Female</form:option>
							</form:select>
						</div>
					</div>
					<div class="row">
						<div class="span4">
							<form:label path="admissionDate">Date of admission</form:label>
							<form:input path="admissionDate" placeholder="dd/mm/yyyy"
								class="datepicker" data-date-format="dd/mm/yyyy"
								data-validation="date" data-validation-format="dd/mm/yyyy"
								data-validation-help="Date format must be dd/mm/yyyy" />
						</div>
						<div class="span4">
							<form:label path="transferDate">Transfer Date</form:label>
							<form:input path="transferDate" placeholder="dd/mm/yyyy"
								class="datepicker" data-date-format="dd/mm/yyyy"
								data-validation="date" data-validation-format="dd/mm/yyyy"
								data-validation-help="Date format must be dd/mm/yyyy" />
						</div>
					</div>
					<div class="row">
						<div class="span4">
							<form:label path="admissionCause">Cause of admission</form:label>
							<form:select path="admissionCause">
								<form:option value="falls with no fracture">falls with no fracture</form:option>
								<form:option value="falls with fracture">falls with fracture</form:option>
								<form:option value="stroke">stroke</form:option>
								<form:option value="infection">infection</form:option>
								<form:option value="unable to cope">unable to cope</form:option>
								<form:option value="dementia">dementia</form:option>
								<form:option value="others">others</form:option>
							</form:select>
						</div>
						<div class="span4">
							<form:label path="mobility">mobility</form:label>
							<form:select path="mobility">
								<form:option value="mobile Independent">mobile Independent</form:option>
								<form:option value="mobile with an aid">mobile with an aid</form:option>
								<form:option value="immobile">immobile</form:option>
								<form:option value="hoisted">hoisted</form:option>
								<form:option value="others">others</form:option>
							</form:select>
						</div>
					</div>
					<div class="row">
						<div class="span4">
							<form:label path="adl">ADL</form:label>
							<form:select path="adl">
								<form:option value="independent">independent</form:option>
								<form:option value="need minimal assistance">need minimal assistance</form:option>
								<form:option value="need major assistance">need major assistance</form:option>
								<form:option value="others">others</form:option>
							</form:select>
						</div>
						<div class="span4">
							<form:label path="planFromMdt">Plan from MDT</form:label>
							<form:select path="planFromMdt">
								<form:option value="on going rehab">on going rehab</form:option>
								<form:option value="discharge home">discharge home</form:option>
								<form:option value="placement residential home">placement residential home</form:option>
								<form:option value="placement nursing home">placement nursing home</form:option>
								<form:option value="died">died</form:option>
							</form:select>
						</div>
					</div>
					<div class="row">
						<div class="span4">
							<form:label path="edd">EDD</form:label>
							<form:input path="edd" placeholder="dd/mm/yyyy"
								class="datepicker" data-date-format="dd/mm/yyyy"
								data-validation="date" data-validation-format="dd/mm/yyyy"
								data-validation-help="Date format must be dd/mm/yyyy" />
						</div>
						<div class="span4">
							<form:label path="outcome">Outcome</form:label>
							<form:select path="outcome">
								<form:option value="mobile with Zimmer frame or stick">on going rehab</form:option>
								<form:option value="immobile">immobile</form:option>
								<form:option value="died">died</form:option>
								<form:option value="discharged home with care package">discharged home with care package</form:option>
							</form:select>
						</div>
					</div>
					<input type="submit" value="Add patient" class="btn btn-primary" />
				</form:form>


				<c:if test="${!empty peopleList}">
					<h3>Patients</h3>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${peopleList}" var="person">
								<tr>
									<td>${person.lastName},${person.firstName},${person.crn},
										${person.dob}</td>
									<td><form action="delete/${person.id}" method="post">
											<input type="submit" class="btn btn-danger btn-mini"
												value="Delete" />
										</form></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.1.47/jquery.form-validator.min.js"></script>
	<script>
		$.validate({
			validateOnBlur : false,
			errorMessagePosition : 'top',
			scrollToTopOnError : false,
			onValidate : function() {
				return {
// 					element : $('#some-input'),
					message : 'Date format must be dd/mm/yyyy'
				}
			}
		});
	</script>
</body>
</html>
