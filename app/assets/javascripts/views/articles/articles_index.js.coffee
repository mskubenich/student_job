class StudentJob.Views.ArticlesIndex extends Backbone.View

  initialize: (options) ->
    @articles = options.articles

  template: HandlebarsTemplates['articles/index']

  el: ->
    $('#container')

  render: ->
    @articles.fetch
      async: false
    console.log JSON.stringify(@articles)
    $(@$el).html @template( articles: @articles.toJSON() )