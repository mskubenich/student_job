class StudentJob.Views.CategorysShow extends Backbone.View

  initialize: (options) ->
    @category = options.category

  template: HandlebarsTemplates['categorys/show']

  el: ->
    $('#container')

  render: ->
    @category.fetch
      async: false
    $(@$el).html @template( @category.toJSON() )