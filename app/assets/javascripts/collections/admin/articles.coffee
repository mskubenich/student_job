class StudentJob.Collections.AdminArticles extends Backbone.Collection

  model: StudentJob.Models.AdminArticle

  url: ->
    '/admin/articles.json?'

  parse: (json) ->
    @total = json.total
    return json.articles