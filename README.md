learn.playground
================

Code collected while learning CoffeeScript OOP based development and geared towards future project appliance and abstractions...

These are very quick and dirty drafted brain-farts and not really for anyones use I guess...

### Error.prototype

Summary: Represents the prototype for the Error constructor.
Description: All Error instances and instances of non-generic errors inherit from Error.prototype. As with all constructor functions, you can use the prototype of the constructor to add properties or methods to all instances created with that constructor.
Detailed: [click here for Vendor-specific extensions of this prototype][01]
Information: [SHOULD read-up for understanding of the concept of prototypes in JavaScript][02]

#### Properties

Standard properties
**constructor**
  Specifies the function that created an instance's prototype.
**message**
  Error message.
**name**
  Error name.


### Error object
Syntax JS: *new* __Error__([`message`[, `fileName`[, `lineNumber`]]])
Creates an error object.
Runtime errors result in new Error objects being created and thrown.

#### Parameters

message
Human-readable description of the error
fileName
Non-standard
The name of the file containing the code that caused the exception
lineNumber
Non-standard
The line number of the code that caused the exception

Available as prototype in JS/CS and client/server

[01]: https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Error/prototype#Vendor-specific_extensions
[02]: http://javascriptweblog.wordpress.com/2010/06/07/understanding-javascript-prototypes/
