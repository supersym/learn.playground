#!/usr/bin/env coffee

class TinyClass

  constructor: (@name) ->
    console.log "Created a copy of myself :)"

  # idea to hotlink the problem lines
  anchor: (someArg) ->

    console.log "printed by using anchor() method"
    console.log "i will now try and misbehave"
    throw new Error "A regular base type error"


class SomeCustomErrorType extends Error

  constructor: (@code, @message, @callback) ->

    console.log "A error object was just created"


try
  throw new SomeCustomErrorType
catch e
  console.log "Caught the little bugger!"


o1 = new TinyClass "Bob"
console.log 'this code triggers error but doesnt handle the exception well using try...catch'
o1.anchor('thisthing')
