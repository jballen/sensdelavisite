$(document).on('ready page:load', function() {
  $(".sign-in").on("click", function(event) {
    $("#login-overlay").toggleClass("show");
  });
  $("#login-overlay div.button-close").on("click", function(event) {
    $("#login-overlay").toggleClass("show");
  });
});
