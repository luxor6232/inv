
<h1 class="text-success">bienvenido estamos probando una rama nueva</h1>
	<center>

		<div class="container col col.md-6">
		<table id="table"></table>
		</div>
		<div class="container col col.md-6">
		<button id="btn">prueba</button>
		</div>
		<div class="container col col.md-6">
		<select multiple="multiple" size="10" name="duallistbox" id="miDualListbox">
		<option value="1">Opción 1</option>
		<option value="2">Opción 2</option>
		<option value="3">Opción 3</option>
		<!-- Agrega más opciones aquí -->
	</select>
		</div>










<?php $this->load->view('componentes/foot'); ?>

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
