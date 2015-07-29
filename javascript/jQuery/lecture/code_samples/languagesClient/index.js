function liTemplate(id, input, details){
  return '<li class="language" data-details="' +
  details +
  '">' +
  input +
  '<span data-id="' + id + '"> &times;</span></li>';
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
  languages = [{"name":"ruby","details":"the language of ballers","id":1},
    {"name":"python","details":"a snaky language","id":2},
    {"name":"javascript","details":"JUNK!","id":3},
    {"name":"haskell","details":"check out my neckbeard","id":4}
  ]
  languages.forEach(function(item) {
    appendToUl($languages, item);
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
});