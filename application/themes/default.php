<!DOCTYPE html> 
<html> 
	<head>
		<title>script</title>
		<!-- css from layout -->
		<?php foreach ($css as $c):?>
		<link rel="stylesheet" href="<?= $c ?>">
		<?php endforeach ?>
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
