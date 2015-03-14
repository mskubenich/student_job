class StudentJob.Models.Category extends Backbone.Model

  initialize: (id) ->
    @id ||= id

  defaults:
    id: null
    title: null
    description: null
    parentId: null

  url: ->
    '/categorys/' + @id + '.json?'