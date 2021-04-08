// $('#exampleModal').on('show.bs.modal', function (event) {
//   var button = $(event.relatedTarget); // Button that triggered the modal

//   var laImagen = button.data('imagen'); // Extract info from data-* attributes
//   // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
//   // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
//   var modal = $(this);
//   modal.find('.modal-content').text("<p>ESTA MAMADA FUNCIONA</p>");
//   // modal.find('.modal-title').text('New message to ' + recipient)
//   //modal.find('.modal-body img src').val(laImagen)
//   //modal.find('.modal-body').innerHTML = "<%= image_tag 'grilla/${laImagen}', size: '200x100'%>";
  
//   modal.find('.modal-content').text("<%= image_tag" + laImagen + ", size: '800x400' %>");
// })

/*
function grillaMaterias(laImagen){

}
*/

$(document).ready(function () {
  $('.btn').click(function (event) {
    event.preventDefault();
    $('.modal img').attr('src', $(this).data('imagen'));
    $('.modal').modal('show');
  });
})