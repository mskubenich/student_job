class StudentJob.Models.AdminUser extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  url: ->
    'admin/users.json?'