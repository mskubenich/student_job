class StudentJob.Views.ProposalsNew extends Backbone.View

  template: HandlebarsTemplates['proposals/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()