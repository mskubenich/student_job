class StudentJob.Views.CategorysNew extends Backbone.View

  template: HandlebarsTemplates['categorys/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()