class StudentJob.Views.ArticlesShow extends Backbone.View

  initialize: (options) ->
    @article = options.article

  template: HandlebarsTemplates['articles/show']

  el: ->
    $('#container')

  render: ->
    @article.fetch
      async: false
    $(@$el).html @template( @article.toJSON() )