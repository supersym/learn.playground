learn.playground
================

Code collected while learning CoffeeScript OOP based development and geared
towards future project appliance and abstractions. These are very quick and
dirty drafted brain-farts and not really for anyones use I guess...

# Error.prototype
Represents the prototype for the Error constructor.

> Implemented in: JavaScript 1.?
> ECMAScript Edition: ECMAScript 1st Edition

#### Description

All Error instances and instances of non-generic errors inherit from
Error.prototype. As with all constructor functions, you can use the prototype of
the constructor to add properties or methods to all instances created with that
constructor.

#### Additional information
+ [Vendor-specific extensions of this prototype][01]
+ [Must read essential information on prototype][02]

## Standard Properties

Properties conforming ECMAScript specification are the only ones of interest to
us for generic usability inside a CoffeeScript abstract type for public usage
under any browser and platform.

#### constructor
Specifies the function that created an instance's prototype

#### message

Error message. A human-readable description of the error. This property contains
a brief description of the error if one is available or has been set. The
message property combined with the name property is used by the
Error.prototype.toString method to create a string representation of the Error.
By default, the message property is an empty string, but this behavior can be
overridden for an instance by specifying a message as the first argument to the
Error constructor.

##### Example: Throwing a custom error with message

```js
var e = new Error("Could not parse input"); // e.message is "Could not parse input"
throw e;
```

#### name

Error name. By default, Error instances are given the name "Error". The name
property, in addition to the message property, is used by the Error.prototype
toString() method to create a string representation of the error.

##### Example: Throw a custom error with message, afterwards set name property

```js
var e = new Error("Malformed input"); // e.name is "Error"
e.name = "ParseError";                // e.toString() would return
throw e;
```

## Standard Methods

#### toString

Used as `error.toString()` without any parameters. The Error object overrides
the Object.prototype.toString method inherited by all objects. Check [this
link][03] to read more.

##### Example

```js
var e = new Error("fatal error");
e.toString(); // returns "Error: fatal error"

e.name = undefined;
e.toString(); // returns "fatal error"

e.message = undefined;
e.toString(); // returns ""

e.name = "Error";
e.toString(); // returns "Error"
```

##### Methods inherited from Object.prototype

- \_\_defineGetter\_\_
- \_\_defineSetter\_\_
- hasOwnProperty
- isPrototypeOf
- \_\_lookupGetter\_\_
- \_\_lookupSetter\_\_
- \_\_noSuchMethod\_\_
- propertyIsEnumerable
- unwatch
- valueOf
- watch

## Error object (instance)
`new` __Error__ ( [ *message* [, *fileName* [, *lineNumber* ]]] )

#### Description

Creates an error object. Runtime errors result in new Error objects being
created and thrown.

### Parameters

- message (inherited from prototypical ancestor)
- fileName (Non-standard)
  The name of the file containing the code that caused the exception
- lineNumber (Non-standard)
  The line number of the code that caused the exception

Available as prototype in JS/CS and client/server

[01]: https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Error/prototype#Vendor-specific_extensions
[02]: http://javascriptweblog.wordpress.com/2010/06/07/understanding-javascript-prototypes/
[03]: https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Error/toString
