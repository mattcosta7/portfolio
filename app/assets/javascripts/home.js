$(document).ready(function(){
  $('form').bind('ajax:complete',function(){
    $('#name').val('');
    $('#email').val('');
    $('#message').val('');
    $('form').prepend("<p class='red-text text-darken-4'>Message Successfully Sent, I'll get back to you shortly</p>");
  });
  
});
