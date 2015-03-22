class StudentJob.Models.AdminArticle extends Backbone.Model

  defaults:
    id: null

  initialize: (id) ->
    @id ||= id

  urlRoot: ->
    '/admin/articles'

  save: (key, val, options) ->
    this.beforeSave(key, val, options)
    return Backbone.Model.prototype.save.call(this, key, val, options)

  beforeSave: (key, val, options) ->
    this.attributes = {
      id: this.attributes['id'],
      article: {
        id: this.attributes['id'],
        title: this.attributes['title'],
        body: this.attributes['body']
      }
    }