$('#form-add').hide();
$('#form-edit').hide();

$('#add-wedding').on('click', function(){
	$('#form-add').show();
	$('#table-wedding').hide();
});

$('.fa-edit').on('click',function(){
	let $row = $(this).closest('tr').find('td');
	let $id =$row['2']['childNodes']['0']['attributes']['0']['nodeValue'];
	$('#edit_form_wedding').attr("action", "wedding/"+$id);
	$('#edit_wedding_name').val($row['0']['outerText']);
	$('#edit_owner').val($row['1']['outerText']);
	$('#form-edit').show();
	$('#table-wedding').hide();
});


$('.fa-chevron-left').on('click',function(){
	$('#form-add').hide();
	$('#form-edit').hide();
	$('#table-wedding').show();
});
