class StudentJob.Routers.Articles extends Backbone.Router

  routes:
    'articles': 'index'

  index: ->
    @articles = new StudentJob.Collections.Articles()

    @articlesIndexView = new StudentJob.Views.ArticlesIndex
      articles: @articles

    @articlesIndexView.render()