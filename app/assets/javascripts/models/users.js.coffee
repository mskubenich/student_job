class StudentJob.Models.User extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    email: null
    password: null
    password_confirmation: null

  url: ->
    '/users/profile.json?'