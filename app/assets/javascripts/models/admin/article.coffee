class StudentJob.Models.AdminArticle extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  url: ->
    '/admin/articles/' + @id + '.json?'