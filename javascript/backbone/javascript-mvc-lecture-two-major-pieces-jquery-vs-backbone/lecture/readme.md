
What are the core components of the JSMV* frameworks

  * Data Binding between HTML and a client-side JavaScript object model
    *backbone has no data binding
    * two way(everyone else)
  * View Templates
    * declarative DOM based (angular)
      *so here we’re decorating the DOM language itself
    * string templating based (underscore, mustache, handlebars)
      *here were building up giant strings of HTML by dynamically replacing pieces of a string and then injecting into a DOM
  * Model(observable:change tracking)
    *access model changes through an interface so that the framework knows when to rerender views (react, backbone, spine, knockout)
    * dirty checking (angular)
  * Data Storage (local or through a web server to a database)
    * autosync with restful services
    * implement your own ajax which should return json
    * allow either
  * URL Routing (keeping the back button working and search engines happy)
    * dealing with the fact that you need to track state transitions and there are no URLs
    * Routing, at a minimum maps your URLs to actions, but sometimes goes as far as implementing a full “state machine” design pattern for managing state transitions within a view.

  * Is it better to compose your overall solution with small libraries rather than betting the house on a single framework which could fall out of favor
    * this leads to a good discussion of technology choices, open source, communities etc
      * for example, angular 1.3 -> 2.0 will be breaking changes. people are fucked and angry.
      * use react for the V in MVC, now you can easily swap out how you do your rendering of views. when react comes out and blows your other rendering solution away, you are modular, and not tied to one framework
    * so you could use knockout.js for data binding, durandalJS for screen management and composition and sammy.js for routing
    * you could use backbone which does not give you data binding, really just introduces a way to organize your code and gives you events to hook into to to update the view (one way data binding) when the model changes. or you could go to marionette which uses backbone as a base and creates a more full featured framework around it

  * How do we show the problems JSMVC tries to solve?
  * Look at a note taking app
    * [Jquery](http://jsfiddle.net/cmckeachie/Lh24U) 
    * [Backbone version](http://jsfiddle.net/cmckeachie/AzC59)
  * Problem: HTML in JavaScript
    * Every time a note is added to the list on the user interface a new item (<li></li>) is added to the unordered list (<ul>). This item template is hard-coded in JavaScript in the jQuery version below.
  * Solution: Templates and Data binding
    * The solution is to move the item template out of the JavaScript into an HTML view template as we did in the Backbone version:
  * This isn't too big a deal, because the template is so simple but templates quickly become more complex in my experience. Let's imagine a few ways this template might become more complex:
    * List items may need CSS classes but which classes the item gets depends on whether it's an item just added, or an item being edited etc...
    * List items may have another list nested inside of them, for example a series of posts or questions with comments. The nested list of comments may be complex enough to need its own template
    * List items may each have a form with several inputs and buttons
    * When this complexity comes in it becomes a mess to manage these HTML fragments constantly escaping back and forth between data and markup and either loading these fragments into jQuery wrapped DOM elements to modify them easily or doing string replacement with regular expressions. Templates solve this problem and make the code much easier to follow and less complex.
  * Problem: HTML Templates Duplicated on Client and Server (so you need to keep the templates in sync on the server and the client)
    * In the jQuery example the notes were originally rendered from the server so the list item has a template on the server which probably looks something like this:

```javascript
<ul>

<% foreach (note in notes)%>

<li data-id='<% = [note.id](http://note.id/) %>'> <% = note.text %> <a class="edit"

href="#">edit</a></li>

<% } %>

</ul>
```

  * Solution: Thin-Server Architecture
    * "Thin-server architecture" is the idea that you have a thin RESTful data API on the server that serves multiple rich or thick clients. For example, a single-page JavaScript application and a native mobile application get the same data from an API. Thin server architecture solves the duplicate template problem by often needing only one template which is interpreted on the client in JavaScript. All of the JavaScript MV* frameworks assume the use of a "thin-server architecture."
  * Problem: Views and Model Data are too tightly coupled
    * In a server-side plus jQuery architecture, the "application state" is frequently stored in the DOM in the ID attribute, class or a custom attribute of an element. The most common example of this is unique IDs from a database being stored as attributes in the DOM so they can be referenced later to pull back the other "application state" or model data. This tight coupling between the user interface and data becomes a problem when a designer or developer changes a CSS class name or ID on an HTML element and breaks the application. I've learned over the years that having more than one copy of data in an application frequently results in one of the copies getting out of sync and causing bugs.
    * Hard to change views, slow to search through the DOM rather than in pure JS, Storing state and data in HTML is a bad idea, because it makes it hard to keep multiple views that represent the same data in sync. (multiple views that need to change based on one model/piece of data)
  * Solution: Models and Data binding
    * With client-side MVC frameworks, that "application state" is managed in JavaScript objects in memory similar to how a traditional desktop application manages its "application state". The data-id attribute isn't even needed in the Backbone example.
  * Problem: Organization and Maintenance
    * The jQuery example code is not organized because all the code is contained in a few functions and those functions are not organized to have only one reason to change--i.e. a single responsibility. The view and model data logic are inter-tangled. The code used to render the entire page or view (HTML) and all the events triggered by that large view as well as all code to manage the data needed for the view including how to store it and retrieve it is in one place. That is a lot of responsibility for those couple functions. Imagine if you wrote that type of jQuery code on the server side. You wouldn’t, you would have a view or partial with your html, a model to represent your data, and a controller to react to user interface events and bind your model together with the view. You wouldn't put all the code in one render method (which is basically what the jQuery example does).
  * Solution: Views (in Backbone) or Controllers, Models, Events
    * Models can be reused with multiple views
    * Events and Observables. One feature that makes it easier for these views and models to live separately is that they can send events back and forth. The most common example of this is the observer pattern where change tracking is enabled on a model and change events such as "add" or "change" fire and the views can listen for these and take appropriate action such as re-rendering.
  * Problem: Back Button Broken, Bookmarking doesn’t work
    * Another challenge is state management. In a traditional server-side web application "state" is commonly maintained in the URL of the web browser. When you reload parts of the HTML on a page but don't update the URL of the web browser the back button may not work in all the ways useful to the end users without careful consideration. Let's say you want to change from a list view to a list item details view you want the url to change so that users can bookmark and send each other direct links to the list item details.
  * Solution: Routers
  * Problem: Serve Multiple Clients
    * How do you scale your server side to serve multiple clients?

  * Solution: Server as API
    * benefit of this is you can use one API for multiple clients (iOS, mobile, desktop)

  

