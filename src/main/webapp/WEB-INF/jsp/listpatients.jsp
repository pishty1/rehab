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
	<div class="container">
		<div class="row">
			<div class="span8 offset2">
				<div class="page-header">
					<h1>List of rehabilitation patients</h1>
				</div>
				<a href="/patient/">create new patients</a>
				<c:if test="${!empty patientList}">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>CRN</th>
								<th>Date of birth</th>
								<th>&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${patientList}" var="person">
								<tr>
									<td>${person.firstName} ${person.lastName}</td>
									<td>${person.crn}</td>
									<td>${person.dob}</td>
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
</body>
</html>
