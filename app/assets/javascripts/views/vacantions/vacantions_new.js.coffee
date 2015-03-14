class StudentJob.Views.VacantionsNew extends Backbone.View

  template: HandlebarsTemplates['vacantions/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()