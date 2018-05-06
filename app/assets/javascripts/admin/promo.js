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
  // $("#promo_date_end_year").val($date_end.split("-")[0]);
  // $("#promo_date_end_month").val($date_end.split("-")[1]);
  $("#promo_date_end_day").val($date_end.split("-")[2]);
  // $("#promo_date_start_year").val($date_start.split("-")[0]);
  // $("#promo_date_start_month").val($date_start.split("-")[1]);
  // $("#promo_date_start_day").val($date_start.split("-")[2]);
  if ($row["4"].innerText == "Active") {
    $("#active").val("Active");
  } else {
    alert("");
    $("#active").val("Inactive");
  }
  $('#form-edit').show();
}