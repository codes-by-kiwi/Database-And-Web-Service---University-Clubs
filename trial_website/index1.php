<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css"/>
	<script type="text/javascript" src="jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="jquery.autocomplete.js"></script>
	<script>
		jQuery(function(){
		$("#search1").autocomplete("search.php");
	});
	</script>
</head>
<body>
 <form action="get_form.php">
 Club Name: <input type="text" name="q" id="search1" placeholder="Enter Club Name">
 <input type="submit" value="Submit"/>
 </form>
</body>
</html>

