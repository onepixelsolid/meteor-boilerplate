###
Router._filters =
  isReady: ->
    unless @ready()
    else
      @next()
    return

  isLoggedIn: ->
    @next()
    return

filters = Router._filters
###

Meteor.startup ->
  if Meteor.isClient

    # Load Hooks
    ###
    Router.onRun ->
      @next()
      return
    ###

    # Before Hooks
    ###
    Router.onBeforeAction filters.isReady
    ###

    # After Hooks
    ###
    Router.onAfterAction filters.setTitle
    ###
  return