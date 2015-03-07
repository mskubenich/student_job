class StudentJob.Views.VacantionsIndex extends Backbone.View

  initialize: (options) ->
    @vacantions = options.vacantions

  template: HandlebarsTemplates['vacantions/index']

  el: ->
    $('#container')

  render: ->
    @vacantions.fetch
      async: false
    console.log JSON.stringify(@vacantions)
    $(@$el).html @template( vacantions: @vacantions.toJSON() )