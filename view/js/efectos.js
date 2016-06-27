
function ocultarAlert(){
  $( "#_AJAX_LOGIN_ div" ).fadeOut(15000);
}
$('#log a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
});

$('#reg a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
});
