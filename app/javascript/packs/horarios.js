// Cambiar la la clase del botón que dispara el modal
// $('.btn) por $(.btnHorario).on('click', function )...
// Y en _horarios.html.erb agrega la clase btnHorario a cada botón
document.addEventListener("turbolinks:load", function () {
  $(function () {
    $('.btnHorario').on("click", function (event) {
      event.preventDefault();
      $('.modal img').attr('src', $(this).data('imagen'));
      $('.modal').modal('show');
    });
  })
})