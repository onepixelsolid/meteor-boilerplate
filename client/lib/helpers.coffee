#
# T E M P L A T E   H E L P E R S
#

#
# Helper Title
#
###
UI.registerHelper 'isFoo', ->
  Session.get 'foo'
###

#
# F U N C T I O N S   H E L P E R S
#

#
# Is this user logged in?
#
###
@checkLoggedIn = (router) ->
  if not Meteor.userId()
    Router.go('home')
###