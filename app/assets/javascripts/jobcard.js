$(document).on('turbolinks:load', function() {

init_stock_lookup();

});

init_stock_lookup = function(){

$('#jobcard_vehicle_id').on('change', function(event) {
var selected_resource_id = $(this).val();
console.log("even fire");
  $.ajax({
    url: "/seach_customer",
    type: "get",
    data: 'id=' + selected_resource_id,
          success: function(data){
          $('#jobcard_controller_RESULT').replaceWith(data);
           init_stock_lookup();
          },
          error: function(data){
          $('#jobcard_controller_RESULT').replaceWith(data);
          hide_spinner();
          },
          beforeSend: function(data){
          	show_spinner();
          },
          complete: function(data){
          	hide_spinner();
          }
  });
});

};