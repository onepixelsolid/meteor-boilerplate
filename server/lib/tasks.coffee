#
# Cron Title
#
# Cron Description
#
###
SyncedCron.add
  name: "Cron Title"
  schedule: (parser) ->
    parser.text "every 2 hours"

  job: ->
    options = {}
    task = Meteor.call 'fooBar', options
###