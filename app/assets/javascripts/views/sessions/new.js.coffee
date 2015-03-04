class StudentJob.Views.SessionsNew extends Backbone.View

  template: HandlebarsTemplates['sessions/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()