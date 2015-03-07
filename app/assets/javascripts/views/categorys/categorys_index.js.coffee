class StudentJob.Views.CategorysIndex extends Backbone.View

  initialize: (options) ->
    @categorys = options.categorys

  template: HandlebarsTemplates['categorys/index']

  el: ->
    $('#container')

  render: ->
    @categorys.fetch
      async: false
    console.log JSON.stringify(@categorys)
    $(@$el).html @template( categorys: @categorys.toJSON() )