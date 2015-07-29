function liTemplate(id, input, details){
  return '<li class="language" data-details="' +
  details +
  '">' +
  input +
  '<span data-id="' + id + '" class="delete"> &times;</span></li>';
}

function detailsTemplate(details){
  return'<div class="details">' +
  details +
  '</div>';
}

function appendToUl(ul, item) {
    ul.append(liTemplate(item.id, item.name, item.details));
}

$(document).ready(function() {
  $languages = $(".languages");
  $.getJSON("/languages", function(languages) {
    languages.forEach(function(item) {
      appendToUl($languages, item);
    })
    addDeleteHandlers();
  })

  $('.languages').on('click', '.language', function(event) {
    if ($(this).find('.details').length === 0) {
      var $li = $(this);
      var details = $li.data('details');
      $li.append(detailsTemplate(details));
    } else {
      $(this).find('.details').remove();
    }
  })

function addDeleteHandlers() {
  $('.languages').on('click', '.delete', function() {
    var self = this;
    var id = $(this).data('id');
    $.ajax({
        beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
        url: '/languages/' + id,
        type: "DELETE"
    }).done(function(data) {
        $(self).parent('.language').remove();
    })
  })
}
  $('#new-language').submit(function(event) {
      event.preventDefault();
      // need to add a form to the html
  });
});