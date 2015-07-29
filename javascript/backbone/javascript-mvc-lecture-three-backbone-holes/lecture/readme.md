* what are the common problems backbone didn’t solve?
  * no data binding by default, no two way data binding by default
  * How do you render Views? - By default, Backbone's render method does nothing. To use it, you need to fill in your own rendering function. That could use a templating system like Underscore templates or Handlebars, jQuery manipulation of the DOM, or simple string inserts with .innerHTML(). You could use the same method for every View, or mix it up and use different methods for different Views.
  * How do you manage relationships between objects? - By default Backbone provides a way to manage sets of Models as a Collection, but it doesn't have any built-in utilities for handling nested Models or Collections. And if you want to nest your Views you're completely on your own. You can have a View manage it's child Views, have a single object that manages all Views, or let each View manage itself.
  * How do your Views communicate between each other? - Views will often need to communicate with each other. If for instance one View needs to change the contents of another area of the page, it could do so directly through jQuery, could get a direct reference to a View managing that area and call a function on it, change a Model that another View listens to, adjust a URL that a router listens to, or fire an event that another View could respond to. Apps can use some combination of all of these methods.
  * How do you avoid repeating yourself? - If you're not careful, Backbone can involve a lot of boilerplate. Taking the naive approach, you could end up writing rendering code, View management code and event management code over and over again in every View. If you try to get around that using inheritance, you can end up with brittle designs that require you to make calls down to a Views prototype when you want View specific code. Avoiding that type of repetition and the maintenance overhead it brings is a challenge.
  * How do you manage a View's life-cycle?? - What code is responsible for rendering a View? Does it render itself on creation? Or is it the responsibility of the object creating it? Does it get attached to the DOM immediately on render? Or is that a separate step? When the View is removed from the DOM or deleted, how do you handle any cleanup that is needed?
  * How do you structure your application? - How do you get your app started? Do you have a central object that starts everything, or is it more distributed? If you do centralize, do you use the router to start things, or provide some other object for managing your code?
  * How do you prevent memory leaks? - If your application is a SPA or it contains long lasting interactive sections, another issue that you may need to deal with is memory leaks. It can be easy to create "zombie Views" in Backbone if you're not attentive to the need to unregister events attached to a View after you're done with it.