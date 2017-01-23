$(document).ready(function(){
  $("#profile_btn").on("click", function() {
    $(".profile-dropdown-content").toggle("show");
  });

  $("#create_event_btn").on("click", function() {
    $(".create-event").toggle("show");
  });

  flatpickr(".flatpickr", {
	  enableTime: true,
    altInput: true,
    altFormat: "F j, Y h:i K" 
  });

});
