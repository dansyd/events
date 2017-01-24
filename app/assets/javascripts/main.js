$(document).ready(function(){
  $("#profile_btn").on("click", function() {
    $(".profile-dropdown-content").toggle("show");
  });

  $("#create_event_btn").on("click", function() {
    $(".create-event").slideToggle();
  });


  var startCal = $("#start_datetime").flatpickr({
    enableTime: true,
      altInput: true,
      altFormat: "l j F, Y - h:i K",
      onChange: function(selectedDates, dateStr, instance) {
        endCal.config.minDate = selectedDates[0];
	  }
  });

  var endCal = $("#end_datetime").flatpickr({
    enableTime: true,
      altInput: true,
      altFormat: "l j F, Y - h:i K",
      onChange: function(selectedDates, dateStr, instance) {
        startCal.config.minDate = selectedDates[0];
    }
  });



});
