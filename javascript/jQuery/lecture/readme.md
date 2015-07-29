* what is jquery
* how to add jquery to the DOM
cnn.com
var oScript = document.createElement("script");
oScript.type = "text\/javascript";
oScript.src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"
var body = document.getElementsByTagName("body")[0]
body.appendChild(oScript)
* $ or jQuery
* document ready
* asynchronous/race conditions
* order of loading of scripts
$(function() {
  console.log( 'ready!' );
});
* selectors
* create jquery objects by wrapping a dom element
* when you call a jquery function it operates on all the elements returned by the selector
* each function, $(this)
* children()
* add remove classes, toggle classes
* show/hide, slideup down
* attr method
* text method
* val method (for select boxes)
* $( ’select' ).val( 'new value' ); select one of the values

* evented programming
  * click, keydown
  * preventdefault (a elements or forms)
  * bubbling or event.target

  * append method
  * remove method (hack cnn)

##Code
* Show code with click events
* Show code to build a select box that creates subchoices

