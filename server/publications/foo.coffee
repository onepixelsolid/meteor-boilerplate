#
# Foo Publish
#
Meteor.publish 'foo', () ->
  Foo.find()