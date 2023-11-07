$(function(){
		$('#tblTrabajador').bootstrapTable({
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

        $('#tblCliente').bootstrapTable({
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
})
