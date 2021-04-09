document.addEventListener("turbolinks:load", function () {
  $(function () {
    $('.btn').on("click", function (event) {
      event.preventDefault();
      $('.modal img').attr('src', $(this).data('imagen'));
      $('.modal').modal('show');
    });
  })
})