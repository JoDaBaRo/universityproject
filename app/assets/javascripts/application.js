// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require bootstrap-select
//= require moment
//= require tempusdominus-bootstrap-4.js
function selectpickerRefresh() {
 setTimeout(function(){
  $('.selectpicker').selectpicker('refresh');
 }, 100)
}

$( window ).on( "load", function() {
 $('#datetimepicker4').datetimepicker({
    format: 'L'
  });
});
$( window ).on( "load", function() {
 $('#datetimepicker3').datetimepicker({
  });
});

