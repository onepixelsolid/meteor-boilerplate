#
# C O N T R O L L E R
#
@FooRouteController = RouteController.extend(
  template: 'foo_index'

  action: ->
    @render 'foo_index'

  onRun: ->
    @next()

  onBeforeAction: ->
    @next()

  subscriptions: ->
    Meteor.subscribe 'foo'
)

#
# R O U T E S
#
Meteor.startup ->
  #
  # Foo
  #
  Router.route '/',
    name: 'foo'
    controller: 'FooRouteController'