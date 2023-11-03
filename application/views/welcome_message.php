<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css') ?>">
	<link rel="stylesheet" href="<?= base_url('assets/bootstrap-table/dist/bootstrap-table.css') ?>">
	<link rel="stylesheet" href="<?= base_url('assets/alertifyjs/css/alertify.min.css') ?>">
	<link rel="stylesheet" href="<?= base_url('assets/bootstrap-duallistbox/dist/bootstrap-duallistbox.css') ?>">


</head>

<body>

	<h1 class="text-success">bienvenido estamos probando una rama nueva</h1>
	<table id="table"></table>
	<button id="btn">?</button>






	<select multiple="multiple" size="10" name="duallistbox" id="miDualListbox">
		<option value="1">Opción 1</option>
		<option value="2">Opción 2</option>
		<option value="3">Opción 3</option>
		<!-- Agrega más opciones aquí -->
	</select>


	<script src="<?= base_url('assets/js/jquery.js') ?>"></script>
	<script src="<?= base_url('assets/bootstrap-table/dist/bootstrap-table.js') ?>"></script>
	<script src="<?= base_url('assets/alertifyjs/alertify.min.js') ?>"></script>
	<script src="<?= base_url('assets/bootstrap-duallistbox/dist/jquery.bootstrap-duallistbox.js') ?>"></script>

	<script>
		$('#btn').on('click', function() {
			alertify.alert("Esto es una alerta de prueba");
		});


		$('#table').bootstrapTable({
			url: '',
			columns: [{
				field: 'id',
				title: 'Item ID'
			}, {
				field: 'name',
				title: 'Item Name'
			}, {
				field: 'price',
				title: 'Item Price'
			}]
		})



		$(document).ready(function() {
			$('#miDualListbox').bootstrapDualListbox();
		});
	</script>
</body>

</html>