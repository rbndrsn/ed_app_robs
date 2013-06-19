Stack.destroy_all

Stack.create([
  {
    name: "Ruby",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      Card.new(front: 'puts', back: 'Prints to screen, adds a newline after each argument'),
      Card.new(front: 'print', back: 'Prints to screen'),
      Card.new(front: '+=', back: 'Shorthand operator for addition'),
      Card.new(front: 'def', back: 'Opening of defining a method'),
      Card.new(front: 'gets.chomp', back: '"gets" is a method that retrieves only strings from the keyboard with an ending "\n" character, "chomp" removes the "/n"'),
      Card.new(front: 'Integer', back: 'Integer is the basis for the two concrete classes that hold whole numbers, Bignum and Fixnum.' ),
      Card.new(front: 'Object', back: 'Object is the default root of all Ruby objects. Object inherits from BasicObject which allows creating alternate object hierarchies.' ),
      Card.new(front: 'to_s', back: "The .to_s is one of ruby's ways of converting variables of one type for use as another type. This one changes something into a 'string' (text characters)" ),
      Card.new(front: 'DSL', back: 'Domain Specific Langauge eg. rspec' )
    ]
  },
  {
    name: "jQuery",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      Card.new(front: '$', back: '$ is an alias for jQuery.'),
      Card.new(front: '.noConflict();', back: 'Adds the specified class(es) to each of the set of matched elements.'),
      Card.new(front: '.addClass()', back: 'Adds the specified class(es) to each of the set of matched elements.'),
      Card.new(front: '.on()', back: 'Attach an event handler function for one or more events to the selected elements, e.g, .on("click", function(){});'),
      Card.new(front: '.hide()', back: 'Hide the matched elements'),
      Card.new(front: '.val()"', back: 'Get the current value of the first element in the set of matched elements or set the value of every matched element.'),
      Card.new(front: '("#id")', back: 'Selects a single element with the given id attribute.'),
      Card.new(front: '.serialize()', back: 'Creates a text string in standard URL-encoded notation.'),
      Card.new(front: '.delay()', back: 'Set a timer to delay execution of subsequent items in the queue.'),
      Card.new(front: '.blur()', back: 'Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.'),
    ]
  },
  {
    name: "Introducing HTML5",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      Card.new(front: "<!doctype html>", back: "DocType declaration placed at top of document" ),
      Card.new(front: "noValidate", back: "Validation method placed in form element" ),
      Card.new(front: "<hgroup>", back: "Group heading elements" ),
      Card.new(front: "placeholder", back: "Specify a hint for an input field" ),
      Card.new(front: "getCurrentPosition()", back: "Get the current location of a user" ),
      Card.new(front: "<canvas>", back: "Used to draw graphics in an HTML document" ),
      Card.new(front: "required", back: "Indicates a form element must be filed out" ),
      Card.new(front: "data-", back: "A custom defined attributes prefix that doesn't effect validation" ),
      Card.new(front: "microdata", back: "The official HTML5 specification used to nest semantics within existing content on web pages" ),
      Card.new(front: "contenteditable", back: "Allow the user to edit any text and markup contained within the element" ),
      Card.new(front: "Abbr", back: "Represents an abbreviation or acronym" ),
      Card.new(front: "<section>", back: "Represents a generic document or application section" ),
      Card.new(front: "<datalist>", back: 'Used for providing an "autocomplete" feature on form elements, enabling you to provide a list of predefined options to the user as they input data.' ),
      Card.new(front: "<nav>", back: "Represents a section of a page that links to other pages or to parts within the page" ),
      Card.new(front: "<audio>", back: "Provides the ability to easily embed audio into HTML documents" ),
      Card.new(front: "<embed>", back: "Defines a container for an external application or interactive content" ),
      Card.new(front: "<fieldset>", back: "Represents a set of form controls optionally grouped under a common name" ),
      Card.new(front: "<mark>", back: "A way to highlight text to indicate its relevance to the user" ),
      Card.new(front: "<bdi>", back: "Represents a span of text that is to be isolated from its surroundings for the purposes of bidirectional text formatting." ),
      Card.new(front: "<figure>", back: "Represents some flow content, optionally with a caption, that is self-contained and is typically referenced as a single unit from the main flow of the document." )
    ]
  },
  {
    name: "HTTP Status Codes",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      Card.new(front: "100", back: "Client should continue with request" ),
      Card.new(front: "418", back: "I'm a teapot" ),
      Card.new(front: "122", back: "URL is longer than a maximum of 2083 characters" ),
      Card.new(front: "200", back: "standard response for successful HTTP requests" ),
      Card.new(front: "201", back: "request has been fulfilled; new resource created" ),
      Card.new(front: "301", back: "this and all future requests directed to the given URI" ),
      Card.new(front: "302", back: "temporary response to request found via alternative URI" ),
      Card.new(front: "400", back: "request cannot be fulfilled due to bad syntax" ),
      Card.new(front: "404", back: "requested resource could not be found" ),
      Card.new(front: "414", back: "URL provided was too long for the server to process" ),
      Card.new(front: "420", back: "Twitter rate limiting" ),
      Card.new(front: "500", back: "generic error message" ),
      Card.new(front: "503", back: "server is currently unavailable" ),
      Card.new(front: "509", back: "bandwidth limit exceeded" ),
      Card.new(front: "511", back: "client needs to authenticate to gain network access" ),
      Card.new(front: "508", back: "server detected an infinite loop while processing the request" ),
      Card.new(front: "204", back: "request processed, no content returned" ),
      Card.new(front: "203", back: "request processed, information may be from another source" ),
      Card.new(front: "403", back: "server refuses to respond to request" ),
      Card.new(front: "405", back: "request method not supported by that resource" ),
      Card.new(front: "408", back: "server timed out waiting for the request" )
    ]
  },
  {
    name: "Backbone JS",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, voluptatem, ratione, in quisquam vero nemo facilis optio dicta non voluptatibus asperiores fugiat sint perspiciatis rem totam harum corporis neque dolore.",
    is_custom: false,
    cards:[
      Card.new(front: "Model", back: "In Backbone, a model represents a singular entity - a record in a database if you will." ),
      Card.new(front: "Collection", back: "Collections in Backbone are essentially just a collection of models." ),
      Card.new(front: "View", back: "Fundamentally a view handles two duties. 1. Listen to events thrown by the DOM and models/collections. 2. Represent the applications state and data model to the user." ),
      Card.new(front: "Controller", back: "Controllers in Backbone essentially let you create bookmarkable, stateful apps by using hashbangs. Controllers both update the view when the model changes and update the model when the user manipulates the view." ),
      Card.new(front: "initialize()", back: "This method is called when a new instance of a model is created." ),
      Card.new(front: "el", back: "el is basically a reference to a DOM element and all views must have one. It allows for all of the contents of a view to be inserted into the DOM at once, which makes for faster rendering as browser performs the minimum required reflows and repaints." ),
      Card.new(front: "Routers", back: "Routers are used to help manage application state and for connecting URLs to application events. This is achieved using hash-tags with URL fragments, or using the browser's pushState and History API." ),
      Card.new(front: "Backbone.history.start()", back: "Automatically handle routes that have been defined and trigger callbacks when they've been accessed." ),
      Card.new(front: "model.get(attribute)", back: 'Get the current value of an attribute from the model. For example: note.get("title")' ),
      Card.new(front: "model.set(attributes, [options])", back: 'Set a hash of attributes (one or many) on the model. If any of the attributes change the models state, a "change" event will be triggered on the model.' ),
      Card.new(front: "object.on(event, callback, [context])", back: "Bind a callback function to an object. The callback will be invoked whenever the event is fired." ),
      Card.new(front: "router.routes", back: "The routes hash maps URLs with parameters to functions on your router." ),
      Card.new(front: "model.toJSON()", back: "Return a copy of the model's attributes for JSON stringification. This can be used for persistence, serialization, or for augmentation before being sent to the server." ),
      Card.new(front: "collection.where(attributes)", back: "Return an array of all the models in a collection that match the passed attributes." ),
      Card.new(front: "Backbone.$ = $;", back: "If you have multiple copies of jQuery on the page, or simply want to tell Backbone to use a particular object as its DOM / Ajax library, this is the property for you." ),
      Card.new(front: "Create", back: "Convenience to create a new instance of a model within a collection. Equivalent to instantiating a model with a hash of attributes, saving the model to the server, and adding the model to the set after being successfully created.  collection.create(attributes, [options])" )
    ]
  }
])

