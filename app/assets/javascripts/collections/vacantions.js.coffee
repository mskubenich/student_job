class StudentJob.Collections.Vacantions extends Backbone.Collection

  model: StudentJob.Models.Vacantion

  url: ->
    '/vacantions.json?'