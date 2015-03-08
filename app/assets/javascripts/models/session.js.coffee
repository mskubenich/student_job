class StudentJob.Models.Sessions extends Backbone.Model

  initialize: ->
    this.session_token = $.cookie('session_token')
    this.bind('sync', this.onModelSaved)

  defaults:
    session_token: null

  url: ->
    '/sessions.json?'

  save: (key, val, options) ->
    this.beforeSave(key, val, options)
    return Backbone.Model.prototype.save.call(this, key, val, options)

  beforeSave: (key, val, options) ->
    this.attributes = {
      session: {
        email: this.attributes['session[email]'],
        password: this.attributes['session[password]']
      }
    }

  onModelSaved: (model, response, options) ->
    $.cookie('session_token', response['session_token'])
    $.cookie('user_email', response['user_email'])