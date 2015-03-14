class StudentJob.Routers.Articles extends StudentJob.Routers.Application

  routes:
    'articles': 'index'

  index: ->
    @articles = new StudentJob.Collections.Articles()

    @articlesIndexView = new StudentJob.Views.ArticlesIndex
      articles: @articles

    @articlesIndexView.render()