$("turbolinks:load", function () {
  $(function () {
    if ($(".modal-backdrop").length > 1) {
      $(".modal-backdrop").not(':first').remove();
    }
    $('#avisoModal').modal('show');
  });
})
