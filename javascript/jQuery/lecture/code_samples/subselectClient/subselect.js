var subselect = {
  "Ballers" : ["Steph", "Geraldina", "Jordan"],
  "Programmers" : ["Geraldina", "Steph", "Andrew"],
  "Dancers" : ["Lezou", "Mykle", "David"],
  "Rappers" : ["Mykle","Earl"]
}

$(function() {
  $("#selector").change(replaceSelect);
})

function replaceSelect() {
  $("body").append(buildSelectBox());
}

function buildSelectBox() {
  if ($("#subselect").length > 0) {
    $("#subselect").remove();
    return addSelectBox();
  } else {
    return addSelectBox();
  }

}

function addSelectBox() {
  return '<select id="subselect">'
  + buildOptions() + 
  '</select>'
}

function buildOptions() {
  var optionString = ""
  var selected = $("#selector option:selected").text();
  subselect[selected].forEach(function(element) {
    optionString += buildOption(element);
  })
  return optionString;
}

function buildOption(element) {
  return '<option value="' + element + '">' + element + '</option>';
}