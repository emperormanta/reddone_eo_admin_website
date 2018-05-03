$("#form-add").hide();
$("#form-edit").hide();

function showForm(){
  $("#form-add").show();
}

function fillEdit(params){
  let $row = $(params).closest("tr").find("td");
  let $id = parseInt($row["0"].innerHTML);
  $('#edit_form_about').attr("action", "about/"+$id);
  $('#edit_description_about').val($row['1'].innerHTML);
  if ($row["2"].innerText == "Active") {
    $("#active").val("Active");
  } else {
    alert("");
    $("#active").val("Inactive");
  }
  $('#form-edit').show();
}