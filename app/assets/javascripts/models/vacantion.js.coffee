class StudentJob.Models.Vacantion extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    title: null
    description: null

  url: ->
    '/vacantions/' + @id + '.json?'