Stack.destroy_all

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
  }
])

