class StudentJob.Models.Proposal extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    title: null
    description: null

  url: ->
    '/proposals/' + @id + '.json?'