Template.shared_foo.helpers
  #
  # Foo Helper
  #
  fooHelper: ->
    ###
    Foo.findOne
      slug:
        'fooBar'
    ###
    'shared foo helper'

Template.shared_foo.events
  #
  # Foo Event
  #
  'click #foo': (e, tmpl) ->
    ###
    e.preventDefault()
    doSomething()
    ###


Template.shared_foo.rendered = ->
  #
  # Foo Functions
  #
  ###
  $('.something').doSomething()
  ###