class StudentJob.Collections.Users extends Backbone.Collection

  model: StudentJob.Models.Users

  url: ->
    '/proposals.json?'