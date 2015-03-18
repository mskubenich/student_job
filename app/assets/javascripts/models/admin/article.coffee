class StudentJob.Models.AdminArticle extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  url: ->
    '/admin/articles'

  save: (key, val, options) ->
    this.beforeSave(key, val, options)
    return Backbone.Model.prototype.save.call(this, key, val, options)

  beforeSave: (key, val, options) ->
    this.attributes = {
      article: {
        title: this.attributes['title'],
        body: this.attributes['body']
      }
    }