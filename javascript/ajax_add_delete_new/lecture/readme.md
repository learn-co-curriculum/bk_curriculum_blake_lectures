Starting the 3rd week of JS
* procedural js/functional
* OO
* jQuery
We're about to make a dramatic shift in how we architect and think of webapps
* What is your mental model of a webapp?
  * Have students draw their mental model

Ask how this differs from iOS?
* r0ml advocates getting rid of the middleware completely (rails)
Offer the historical perspective of
* cycles of thin vs thick client
  * started with thin client -> mainframe
  * moved to thick client (laptop/desktop)
  * moving to thin client (laptop) with cloud computing
    * losing your computer, you lose almost nothing
    * evernote, google docs, etc
Ajax stands for Async Javascript and XML
* XMLHttpRequest is the official name in the browsers spec
  * first implemented by internet explorer
Ajax represents a move towards a...
* thick client / dumb server model
* twitter tried going all ajax and went back because rendering all HTML on the client was too slow
The big question is...
* where does HTML rendering happen?
* the way we've been doing it, we've done rendering on the server side
 * HTML rendering means generating long strings of HTML (erb templates -> essentially string interpolation)
 * Ajax often moves that to the client but not necessarily, you can still have the server generate HTML and send it back to you.

 coding
 use app i built in the jquery lecture but add ajax to pull data from the server

