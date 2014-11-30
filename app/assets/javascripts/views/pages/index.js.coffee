class StudentJob.Views.PagesIndex extends Backbone.View

  template: HandlebarsTemplates['pages/index']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()