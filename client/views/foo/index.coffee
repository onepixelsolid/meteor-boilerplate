Template.foo_index.helpers
  #
  # Foo Helper
  #
  fooHelper: ->
    ###
    Foo.findOne
      slug:
        'fooBar'
    ###
    'foo helper'

Template.foo_index.events
  #
  # Foo Event
  #
  'click #foo': (e, tmpl) ->
    ###
    e.preventDefault()
    doSomething()
    ###


Template.foo_index.rendered = ->
  #
  # Foo Functions
  #
  ###
  $('.something').doSomething()
  ###