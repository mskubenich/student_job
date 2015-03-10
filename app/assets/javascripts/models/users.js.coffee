class StudentJob.Models.User extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    email: null
    password: null
    password_confirmation: null
    first_name: null
    last_name: null
    country: null


  url: ->
    '/users/profile.json?'