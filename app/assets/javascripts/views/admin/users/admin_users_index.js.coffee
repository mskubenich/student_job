class StudentJob.Views.AdminUsersIndex extends Backbone.View

  initialize: (options) ->
    @users = options.users

  template: HandlebarsTemplates['admin/users/index']

  el: ->
    $('#container')

  render: ->
    @users.fetch({async: false })
    $(@$el).html @template( users: @users.toJSON() )