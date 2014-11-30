class StudentJob.Collections.Proposals extends Backbone.Collection

  model: StudentJob.Models.Proposal

  url: ->
    '/proposals.json?'