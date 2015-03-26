class StudentJob.Models.Vacantion extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    title: null
    description: null
    salary: null
    currency: null


  url: ->
    '/vacantions/' + @id + '.json?'