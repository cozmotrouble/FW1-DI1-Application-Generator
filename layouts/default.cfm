<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="ColdFusion application generator using FW1 and DI1.">
	
    <title>ColdFusion application generator using FW1 and DI1.</title>
	
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
	<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.js"></script>
	<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
	<script src="//cdn.datatables.net/1.10.1/js/jquery.dataTables.min.js"></script>
	
	<link href="//ajax.aspnetcdn.com/ajax/jquery.ui/1.10.1/themes/redmond/jquery-ui.min.css" rel="stylesheet" />
	<link href="css/demo_table_jui.css" rel="stylesheet" />
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
	<link href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css" rel="stylesheet" />
	<!--[if lte IE 8]>
  		<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-old-ie-min.css">
	<![endif]-->
	<!--[if gt IE 8]><!-->
	    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/grids-responsive-min.css">
	<!--<![endif]-->
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/layouts/blog-old-ie.css">
    <![endif]-->
    <!--[if gt IE 8]><!-->
        <link rel="stylesheet" href="css/layouts/blog.css">
    <!--<![endif]-->
	
	 <script>
		$(document).ready(function() {
			$( document ).tooltip();
			$( '#tableData' ).dataTable({
				"bJQueryUI": true,
				"sPaginationType": "full_numbers"
			});
			$( '.tabs' ).tabs();
			$( "#accordion" ).accordion();
		});
	</script>
</head>

<body>
<div id="layout" class="pure-g">
	<cfoutput>#body#</cfoutput>
</div>
</body>
</html>