$(document).on('turbolinks:load', function() {
init_stock_lookup();
});

init_stock_lookup = function(){

$('#jobcard_vehicle_id').on('change', function(event) {
var selected_resource_id = $(this).val();

if (selected_resource_id.length==0){
	selected_resource_id=0;
	console.log("X0");
}

  $.ajax({
    url: "/seach_customer",
    type: "get",
    data: 'id=' + selected_resource_id,
          success: function(data){
          $('#jobcard_controller_RESULT').replaceWith(data);
	      },
          error: function(data){
          $('#jobcard_controller_RESULT').replaceWith('');
          console.log("error");
          hide_spinner();
          },
          beforeSend: function(data){
          	show_spinner();
		   	console.log("step spinner");

          },
          complete: function(data){
          	hide_spinner();
          }
  });
});
};