
$(document).ready(function() {

$('#jobcard_vehicle_id').on('change', function(event) {
var selected_resource_id = $(this).val();
  $.ajax({
    url: "/seach_customer",
    type: "get",
    data: 'id=' + selected_resource_id,
          success: function(data){
           
          }
  })
});

});