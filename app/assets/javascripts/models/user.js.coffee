class StudentJob.Models.User extends Backbone.Model

  initialize: (id) ->
    @id ||= id
    this.bind('sync', this.onModelSaved)

  defaults:
    id: null
    email: null
    password: null
    password_confirmation: null
    first_name: null
    last_name: null
    country: null


  url: ->
    '/users'


  save: (key, val, options) ->
    this.beforeSave(key, val, options)
    return Backbone.Model.prototype.save.call(this, key, val, options)

  beforeSave: (key, val, options) ->
    this.attributes = {
      user: this.attributes
    }

  onModelSaved: (model, response, options) ->
    $.cookie('session_token', response['session_token'])
    $.cookie('user_email', response['user_email'])