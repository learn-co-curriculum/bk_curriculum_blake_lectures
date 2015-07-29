var new_obj = {};
for(var prop in obj) {
  obj[prop].forEach(function(element, index) {
    new_obj[element.toLowerCase()] = Number(prop);
  })
}
return new_obj;