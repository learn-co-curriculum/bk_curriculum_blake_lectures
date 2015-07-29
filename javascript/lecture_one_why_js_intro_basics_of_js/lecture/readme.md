class poll, who is scared of js, who is excited, who hates js

  * confession
    * i'm not a javascript master
  * what do you hate about javascript?
    * underscore
    * browser incompatibility?
    * why do people hate on IE?
    * why are browsers incompatible but ruby never is?
    * ie
      * jquery
  * why javascript?
    * <https://www.w3.org/community/webed/wiki/A_Short_History_of_JavaScript>
  * java vs javascript
  * v8
  * is javascript faster?
   * <https://attractivechaos.github.io/plb/>  
  * node
    * what’s so good about node?
    * why aren’t we learning node if it’s so good?
  * what’s the difference between backbone and node?
    * October 13, 2010 Backbone
  * javascript as a compiler target
    * clojurescript
    * coffeescript
  * why are people excited about javascript?
    * single page apps
      * ember
      * angular
      * backbone
    * react
    * JSON
  * dontbeahater
    * <https://docs.google.com/presentation/d/1kp14LFvagMeM-gDozF7i29h25pHoouzBqubWOPyfs_s/edit#slide=id.p>  
  * let’s write some js
    * REPL (node if you want) (NVM)
    sources
      * command + o
      * stacktrace
      * errors blow up the whole program (silently)
  * let’s do the etl lab
    * jasmine
    * ironboard
    * ironboard -b
    * debugger/breakpoints
    * opening console on the sources tab
  * lets do it in ruby first
    * make a new hash
    * iterate over keys 
    do something with each key
      * functions as first class objects
        * set the property of new hash to be the elements of the array that is the value for each key and lowercase them
        * set the value for that key to be the number version of the string key
        * return the new hash
  * write it in js
    * [SEMICOLONS](http://www.codecademy.com/blog/78-your-guide-to-semicolons-in-javascript)
    * objects are very similar to hashes
    * create a variable, assign it a value
    * access a property of an object/hash
    * functions as first class objects, anonymous functions passed like a block as a callback
    * functions don’t have to be methods
    * for/ in obj
    * forEach
    * toLowerCase()
    * Number(string)
    * explicit return
    * NOT COVERED in this lab
      * for loop
        
      ```javascript  
        for (var i = 0; i < 4; i++) {   
          console.log(i);  
        }
      ```

  * gotchas
    * iterating over keys or values in an object
    if you do this  

      ```javascript
      for (var prop in obj) { }
      ```  
    this can show you inherited properties  
      ```javascript
      for (var prop in obj) {
        if (obj.hasOwnProperty(prop)) {
          // prop is not inherited
        }
      }
      ```
    * if you use it to iterate over an array you can run into all sorts of problems. just use a regular for loop
