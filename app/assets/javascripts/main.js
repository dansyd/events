$(document).ready(function(){

  var startCal = $("#start_datetime").flatpickr({
    minDate: new Date(),
    enableTime: true,
    altInput: true,
    altFormat: "l j F, Y - h:i K",
    onChange: function(selectedDates, dateStr, instance) {
      endCal.config.minDate = selectedDates[0];
	  }
  });

  var endCal = $("#end_datetime").flatpickr({
    minDate: new Date(),
    enableTime: true,
      altInput: true,
      altFormat: "l j F, Y - h:i K",
      onChange: function(selectedDates, dateStr, instance) {
        startCal.config.maxDate = selectedDates[0];
    }
  });

  var searchStartCal = $("#search_start_date").flatpickr({
    minDate: new Date(),
    altInput: true,
    altFormat: "l j F, Y",
    onChange: function(selectedDates, dateStr, instance) {
      searchEndCal.config.minDate = selectedDates[0];
    }
  });

  var searchEndCal = $("#search_end_date").flatpickr({
    minDate: new Date(),
    altInput: true,
    altFormat: "l j F, Y",
    onChange: function(selectedDates, dateStr, instance) {
      searchStartCal.config.maxDate = selectedDates[0];
    }
  });

});
