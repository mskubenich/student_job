class StudentJob.Views.UsersNew extends Backbone.View

  template: HandlebarsTemplates['users/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()