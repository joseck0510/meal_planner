// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require moment
//= require fullcalendar



$(document).ready(function() {
    $('#calendar').fullCalendar({
      header: {
        center: 'month,agendaFourDay' // buttons for switching between views
    },
    views: {
      businessHours: {
        start: '10:00', // a start time (10am in this example)
        end: '18:00', // an end time (6pm in this example)
        },
        agendaFourDay: {
            type: 'agendaWeek',
            duration: { days: 7},
            // slotDuration: '08:00:00',
            slotLabelFormat: 'h:mm',
            allDayText: 'meal',
            buttonText: 'week',
      }
    }
    });
});
