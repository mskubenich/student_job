class StudentJob.Models.Proposal extends Backbone.Model

  defaults:
    id: null
    title: null
    description: null

  url: ->
    '/proposals/' + this.id + '.json?'

#  initialize: ->