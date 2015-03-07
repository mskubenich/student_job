class StudentJob.Collections.Categorys extends Backbone.Collection

  model: StudentJob.Models.Category

  url: ->
    '/categorys.json?'