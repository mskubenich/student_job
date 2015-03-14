class StudentJob.Views.AdminArticlesIndex extends Backbone.View

  initialize: (options) ->
    @articles = options.articles

  template: HandlebarsTemplates['admin/articles/index']

  el: ->
    $('#container')

  render: ->
    @articles.fetch({async: false })
    $(@$el).html @template( articles: @articles.toJSON() )