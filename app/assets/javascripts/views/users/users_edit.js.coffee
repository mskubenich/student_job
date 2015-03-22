class StudentJob.Views.UsersEdit extends Backbone.View

  template: HandlebarsTemplates['users/edit']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()