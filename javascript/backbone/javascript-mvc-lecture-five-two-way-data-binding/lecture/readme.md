TWO WAY DATA BINDING
view -> model
model -> view
* I always thought of this as one way data binding
we usually have some event, that event should be handled and update the model and the views listen to the model changes
* I think of the use case of view -> model as the main one, really it’s model to view that is the most common one.  why?  well view -> model is not really data binding, it’s UI event handling and you want to do other logic before or in addition to actually changing the model. For example, validating input before changing or filtering a list in addition to remembering the current filter. Below is a simple example where code has been implemented to bind both ways

* Why do we need 2-way data binding?
    * With 2-way data binding, your UI can provide short feedback loops on inputs from users. Observing input on forms are common when building browser editors, or advanced control elements, like sliders that are coupled with numeric input.
    * Forms with live preview are a common use case for 2-way databinding.

* Problems with angular's way of "dirty checking"
    * In general data binding gets tricky because if you have to avoid cycles where a change to the control, changes the record set, which updates the control, which updates the record set.... The flow of usage helps avoid these - we load from the session state to the screen when the screen is opened, after that any changes to the screen state propagate back to the session state. It's unusual for the session state to be updated directly once the screen is up. As a result data binding might not be entirely bi-directional - just confined to initial upload and then propagating changes from the controls to the session state.

* Backbone doesn’t have automatic data-binding but it is possible to do manually. Data-binding which updates the view when changes are made to the model to be extremely useful. Data-binding from the view to the model real-world use cases are less common (for example, you want a live preview of how text will look as the user types text in an editor). It can be helpful to have binding from the view to the model but frequently the view change is initiated from user input and you want to do other logic before or in addition to actually changing the model. For example, validating input before changing or filtering a list in addition to remembering the current filter. 
[Backbone two way data binding example](http://jsfiddle.net/cmckeachie/7fGrD/light/)


* More resources
[Backone.stickit two way data binding](http://thinkingonthinking.com/two-way-databinding-with-stickit/)
[Martin fowler on data binding](http://martinfowler.com/eaaDev/uiArchs.html)
[Different approaches to data binding](http://staal.io/blog/2014/02/05/2-way-data-binding-under-the-microscope/)
[Build a temperature converter in backbone vs vanilla js vs angular vs react](http://n12v.com/2-way-data-binding/)