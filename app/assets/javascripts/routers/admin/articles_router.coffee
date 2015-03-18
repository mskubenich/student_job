class StudentJob.Routers.AdminArticles extends StudentJob.Routers.Admin

  routes:
    'admin/articles': 'index'
    'admin/articles/new': 'new'

  index: ->
    @articles = new StudentJob.Collections.AdminArticles()
    @page = new StudentJob.Views.AdminArticlesIndex({articles: @articles})
    @page.render()

  new: ->
    @page = new StudentJob.Views.AdminArticlesNew()
    @page.router = this
    @page.render()