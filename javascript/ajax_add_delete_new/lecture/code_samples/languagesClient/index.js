var domain = 'http://localhost:3000' 
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
  $.getJSON(domain + "/givemedata", function(languages) {
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
        url: domain + '/languages/' + id + ".json",
        type: "POST"
    }).done(function(data) {
        $(self).parent('.course').remove();
    })
  })
}
  $('#new-course').submit(function(event) {
      event.preventDefault();
      // need to add a form to the html
  });
});