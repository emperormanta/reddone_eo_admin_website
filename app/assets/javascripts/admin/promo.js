$("#form-add").hide();

function showForm(){
  $("#form-add").show();
}

function fillEdit(params){
  let $row = $(params).closest("tr").find("td");
  let $id = parseInt($row["0"].innerHTML);
  $('#edit_form_about').attr("action", "about/"+$id);
  $('#name').val($row['1'].innerHTML);
  $('#description').val($row['2'].innerHTML);
  let $date_start = $row["6"].innerHTML;
  let $date_end = $row["7"].innerHTML;
  console.log($("#promo_date_start"));
  $("#promo_date_start").val($date_start);
  if ($row["4"].innerText == "Active") {
    $("#active").val("Active");
  } else {
    alert("");
    $("#active").val("Inactive");
  }
  $('#form-edit').show();
}