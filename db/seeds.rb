Stack.destroy_all
Tag.destroy_all

Tag.create([
  { name: "Ruby" },
  { name: "jQuery" },
  { name: "HTML" },
  { name: "HTTP" },
  { name: "Javascript" },
  { name: "Backbone" }
])

Stack.create([
  {
    name: "Ruby",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      {front: 'puts', back: 'Print to screen, e.g "puts <string>"' },
      {front: 'print', back: 'Print to screen, e.g "puts <string>"' },
      {front: '+=', back: 'Shorthand operator for addition'},
      {front: 'def', back: 'Opening of defining a method' },
      {front: 'gets.chomp', back: '"gets" is a method that retrieves only strings from the keyboard with an ending "\n" character, "chomp" removes the "/n"'},
      {front: 'Integer', back: 'Integer is the basis for the two concrete classes that hold whole numbers, Bignum and Fixnum.' },
      {front: 'Object', back: 'Object is the default root of all Ruby objects. Object inherits from BasicObject which allows creating alternate object hierarchies.' },
      {front: 'to_s', back: "The .to_s is one of ruby's ways of converting variables of one type for use as another type. This one changes something into a 'string' (text characters)" },
      {front: 'interpolation', back: 'Interpolation allows Ruby code to appear within a string, e.g "this is #{interpolated} content"' },
      {front: 'DSL', back: 'Domain Specific Langauge eg. rspec' }
    ]
  },
  {
    name: "jQuery",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      {front: "$", back: "$ is an alias for jQuery." },
      {front: ".noConflict();", back: "If you need to use another JavaScript library alongside jQuery, return control of $ back to the other library with a call to $.noConflict()." },
      {front: ".addClass()", back: "Adds the specified class(es) to each of the set of matched elements." },
      {front: ".on()", back: 'Attach an event handler function for one or more events to the selected elements, e.g, .on("click", function(){});' },
      {front: ".hide()", back: "Hide the matched elements" },
      {front: ".val()", back: "Get the current value of the first element in the set of matched elements or set the value of every matched element." },
      {front: '("#id")', back: "Selects a single element with the given id attribute." },
      {front: ".serialize()", back: "The .serialize() method creates a text string in standard URL-encoded notation." },
      {front: ".fadeIn()", back: "Display the matched elements by fading them to opaque." },
      {front: "jQuery()", back: "Return a collection of matched elements either found in the DOM based on passed argument(s) or created by passing an HTML string." },
      {front: ".data()", back: "Store arbitrary data associated with the matched elements or return the value at the named data store for the first element in the set of matched elements." },
      {front: ".position()", back: "Get the current coordinates of the first element in the set of matched elements, relative to the offset parent." },
      {front: ".length", back: "The number of elements in the jQuery object." },
      {front: ".getJSON()", back: "Load JSON-encoded data from the server using a GET HTTP request" },
      {front: ".ready()", back: "Specify a function to execute when the DOM is fully loaded." },
      {front: ".delay()", back: "Set a timer to delay execution of subsequent items in the queue." },
      {front: ".append()", back: "Insert content, specified by the parameter, to the end of each element in the set of matched elements." },
      {front: ".outerHeight()", back: "Get the current computed height for the first element in the set of matched elements, including padding, border, and optionally margin." },
      {front: ".blur()", back: 'Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.' },
      {front: ".remove()", back: "Remove the set of matched elements from the DOM." }
    ]
  },
  {
    name: "Introducing HTML5",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      {front: "<!doctype html>", back: "DocType declaration placed at top of document" },
      {front: "noValidate", back: "Validation method placed in form element" },
      {front: "<hgroup>", back: "Group heading elements" },
      {front: "placeholder", back: "Specify a hint for an input field" },
      {front: "getCurrentPosition()", back: "Get the current location of a user" },
      {front: "<canvas>", back: "Used to draw graphics in an HTML document" },
      {front: "required", back: "Indicates a form element must be filed out" },
      {front: "data-", back: "A custom defined attributes prefix that doesn't effect validation" },
      {front: "microdata", back: "The official HTML5 specification used to nest semantics within existing content on web pages" },
      {front: "contenteditable", back: "Allow the user to edit any text and markup contained within the element" },
      {front: "Abbr", back: "Represents an abbreviation or acronym" },
      {front: "<section>", back: "Represents a generic document or application section" },
      {front: "<datalist>", back: 'Used for providing an "autocomplete" feature on form elements, enabling you to provide a list of predefined options to the user as they input data.' },
      {front: "<nav>", back: "Represents a section of a page that links to other pages or to parts within the page" },
      {front: "<audio>", back: "Provides the ability to easily embed audio into HTML documents" },
      {front: "<embed>", back: "Defines a container for an external application or interactive content" },
      {front: "<fieldset>", back: "Represents a set of form controls optionally grouped under a common name" },
      {front: "<mark>", back: "A way to highlight text to indicate its relevance to the user" },
      {front: "<bdi>", back: "Represents a span of text that is to be isolated from its surroundings for the purposes of bidirectional text formatting." },
      {front: "<figure>", back: "Represents some flow content, optionally with a caption, that is self-contained and is typically referenced as a single unit from the main flow of the document." }
    ]
  },
  {
    name: "HTTP Status Codes",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      {front: "100", back: "Client should continue with request" },
      {front: "418", back: "I'm a teapot" },
      {front: "122", back: "URI is longer than a maximum of 2083 characters" },
      {front: "200", back: "standard response for successful HTTP requests" },
      {front: "201", back: "request has been fulfilled; new resource created" },
      {front: "301", back: "this and all future requests directed to the given URI" },
      {front: "302", back: "temporary response to request found via alternative URI" },
      {front: "400", back: "request cannot be fulfilled due to bad syntax" },
      {front: "404", back: "requested resource could not be found" },
      {front: "414", back: "URI provided was too long for the server to process" },
      {front: "420", back: "Twitter rate limiting" },
      {front: "500", back: "generic error message" },
      {front: "503", back: "server is currently unavailable" },
      {front: "509", back: "bandwidth limit exceeded" },
      {front: "511", back: "client needs to authenticate to gain network access" },
      {front: "508", back: "server detected an infinite loop while processing the request" },
      {front: "204", back: "request processed, no content returned" },
      {front: "203", back: "request processed, information may be from another source" },
      {front: "403", back: "server refuses to respond to request" },
      {front: "405", back: "request method not supported by that resource" },
      {front: "408", back: "server timed out waiting for the request" }
    ]
  },
  {
    name: "Backbone JS",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      {front: "Model", back: "In Backbone, a model represents a singular entity - a record in a database if you will." },
      {front: "Collection", back: "Collections in Backbone are essentially just a collection of models." },
      {front: "View", back: "Fundamentally a view handles two duties. 1. Listen to events thrown by the DOM and models/collections. 2. Represent the applications state and data model to the user." },
      {front: "Controller", back: "Controllers in Backbone essentially let you create bookmarkable, stateful apps by using hashbangs. Controllers both update the view when the model changes and update the model when the user manipulates the view." },
      {front: "initialize()", back: "This method is called when a new instance of a model is created." },
      {front: "el", back: "el is basically a reference to a DOM element and all views must have one. It allows for all of the contents of a view to be inserted into the DOM at once, which makes for faster rendering as browser performs the minimum required reflows and repaints." },
      {front: "Routers", back: "Routers are used to help manage application state and for connecting URLs to application events. This is achieved using hash-tags with URL fragments, or using the browser's pushState and History API." },
      {front: "Backbone.history.start()", back: "Automatically handle routes that have been defined and trigger callbacks when they've been accessed." },
      {front: "model.get(attribute)", back: 'Get the current value of an attribute from the model. For example: note.get("title")' },
      {front: "model.set(attributes, [options])", back: 'Set a hash of attributes (one or many) on the model. If any of the attributes change the models state, a "change" event will be triggered on the model.' },
      {front: "object.on(event, callback, [context])", back: "Bind a callback function to an object. The callback will be invoked whenever the event is fired." },
      {front: "router.routes", back: "The routes hash maps URLs with parameters to functions on your router." },
      {front: "model.toJSON()", back: "Return a copy of the model's attributes for JSON stringification. This can be used for persistence, serialization, or for augmentation before being sent to the server." },
      {front: "collection.where(attributes)", back: "Return an array of all the models in a collection that match the passed attributes." },
      {front: "Backbone.$ = $;", back: "If you have multiple copies of jQuery on the page, or simply want to tell Backbone to use a particular object as its DOM / Ajax library, this is the property for you." },
      {front: "Create", back: "Convenience to create a new instance of a model within a collection. Equivalent to instantiating a model with a hash of attributes, saving the model to the server, and adding the model to the set after being successfully created.  collection.create(attributes, [options])" }
    ]
  }
])

