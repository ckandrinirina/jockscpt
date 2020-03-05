<!DOCTYPE html> 
<html> 
	<head>
		<title>script</title>
		<!-- css from layout -->
		<?php foreach ($css as $c):?>
		<link rel="stylesheet" href="<?= $c ?>">
		<?php endforeach ?>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
		<!-- css from layout -->
		<!-- js from layout -->
		<?php foreach ($js as $j):?>
		<script src="<?= $j ?>"></script>
		<?php endforeach ?>
		<!-- js from layout -->
		<script> base_url = '<?= $base_url ?>' </script>
	</head>
	<body>
		<?php echo $output; ?>
	</body>
</html>
