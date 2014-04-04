<!doctype html>

<html>
<head>
<meta charset="utf-8">
<title>Rehabilitation Software</title>

<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="//netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="//cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.css"
	rel="stylesheet">

<!--
  IMPORTANT:
  This is Heroku specific styling. Remove to customize.
  -->
<link href="http://heroku.github.com/template-app-bootstrap/heroku.css"
	rel="stylesheet">
<style type="text/css">
.instructions {
	display: none;
}

.instructions li {
	margin-bottom: 10px;
}

.instructions h2 {
	margin: 18px 0;
}

.instructions blockquote {
	margin-top: 10px;
}

.screenshot {
	margin-top: 10px;
	display: block;
}

.screenshot a {
	padding: 0;
	line-height: 1;
	display: inline-block;
	text-decoration: none;
}

.screenshot img,.tool-choice img {
	border: 1px solid #ddd;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
}
</style>
<!-- /// -->
<script type="text/javascript">
<!--
	function appname() {
		return location.hostname.substring(0, location.hostname.indexOf("."));
	}
// -->
</script>
</head>

<body onload="prettyPrint();">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a href="/" class="brand">Rehabilitation Software</a>
			</div>
		</div>
	</div>

	<div class="container" id="getting-started">
		<div class="row">
			<div class="span4 offset2">
				<button type="button" class="btn btn-primary btn-lg">Create patient</button>
			</div>
			<div class="span4 offset2">
				<button type="button" class="btn btn-success btn-lg">List patients</button>
			</div>
		</div>

		<!-- end tab content -->
	</div>
</body>
</html>
