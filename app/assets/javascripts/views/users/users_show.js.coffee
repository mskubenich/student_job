class StudentJob.Views.UsersShow extends Backbone.View

  initialize: (options) ->
    @user = options.user

  template: HandlebarsTemplates['users/show']

  el: ->
    $('#container')

  render: ->
    @user.fetch
      async: false
    $(@$el).html @template({user: JSON.stringify(@user.toJSON())})