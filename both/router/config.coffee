###
coreSubscriptions = new SubsManager(
  # cache recent 50 subscriptions
  ##cacheLimit: 50
  # expire any subscription after 30 minutes
  ##expireIn: 30
)
###

# preloadSubscriptions.push 'currentUser'

Router.configure
  layoutTemplate: 'layout_main'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'
  waitOn: ->
    ###
    _.map preloadSubscriptions, (sub) ->
      Meteor.subscribe sub
      return
    ###
