#
# S C H E M A
#
fooSchemaObject = new SimpleSchema(
  field:
    type: String
    label: 'Field'

  updatedAt:
    type: Date
    label: 'Created At'

  updatedAt:
    type: Date
    label: 'Updated At'
)

#
# C O L L E C T I O N
#
@Foo = new Meteor.Collection 'foo'

FooSchema = new SimpleSchema(fooSchemaObject)
Foo.attachSchema FooSchema

#
# C L I E N T   P E R M I S S I O N S
#
Foo.allow

#
# H E L P E R S
#

#
# H O O K S
#

#
# M E T H O D S
#
Meteor.methods
  #
  # Foo Method
  #
  fooMethod: (options) ->
    timestamp       = Date.now()

    Foo.update
      _id : options.fooId
    ,
      $set:
        field         : 'Hello Food'
        updatedAt     : timestamp
    ,
      upsert: true