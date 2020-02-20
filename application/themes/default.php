<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" > 
	<head>
		<?php foreach ($js as $j):?>
		<script src="<?= $j ?>"></script>
		<?php endforeach ?>
		<script> base_url = '<?= $base_url ?>' </script>
	</head>
	<body>
		<?php echo $output; ?>
	</body>
</html>
