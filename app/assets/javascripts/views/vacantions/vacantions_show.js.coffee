class StudentJob.Views.VacantionsShow extends Backbone.View

  initialize: (options) ->
    @vacantion = options.vacantion

  template: HandlebarsTemplates['vacantions/show']

  el: ->
    $('#container')

  render: ->
    @vacantion.fetch
      async: false
    $(@$el).html @template( @vacantion.toJSON() )