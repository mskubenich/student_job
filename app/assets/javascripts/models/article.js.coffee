class StudentJob.Models.Article extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    title: null
    body: ''

  url: ->
    '/articles/' + @id + '.json?'