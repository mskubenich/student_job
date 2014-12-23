class StudentJob.Collections.Articles extends Backbone.Collection

  model: StudentJob.Models.Article

  url: ->
    '/articles.json?'