
function ocultarAlert(){
  $("#_AJAX_LOGIN_ div").fadeOut(15000);
  $("#_AJAX_PERFIL_ div").fadeOut(15000);
  $("#alertar").fadeOut(15000);
}

$('#log a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
});

$('#reg a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
});

$('.collapse').collapse();

$('.ojo button').click(function(){
  if ($('.ojo input').attr('type') == 'password') {
    $('.ojo input').attr('type','text');
    $(this).html('<i class="fa fa-eye-slash" aria-hidden="true"></i>');
  } else {
    $('.ojo input').attr('type','password');
    $(this).html('<i class="fa fa-eye" aria-hidden="true"></i>');
  }
});
