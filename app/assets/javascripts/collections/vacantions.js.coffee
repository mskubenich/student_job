class StudentJob.Collections.Vacantions extends Backbone.Collection

  model: StudentJob.Models.Vacantions

  url: ->
    '/vacantions.json?'