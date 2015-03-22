class StudentJob.Routers.Articles extends StudentJob.Routers.Application

  routes:
    'articles': 'index'
    'articles/:id': 'show'

  index: ->
    @articles = new StudentJob.Collections.Articles()

    @articlesIndexView = new StudentJob.Views.ArticlesIndex
      articles: @articles

    @articlesIndexView.render()

  show: (id) ->
    @article = new StudentJob.Models.Article(id)

    @articlesShowView = new StudentJob.Views.ArticlesShow
      article: @article

    @articlesShowView.render()