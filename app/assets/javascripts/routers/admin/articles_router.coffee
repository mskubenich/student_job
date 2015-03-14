class StudentJob.Routers.AdminArticles extends StudentJob.Routers.Admin

  routes:
    'admin/articles': 'index'

  index: ->
    @articles = new StudentJob.Collections.AdminArticles()
    @page = new StudentJob.Views.AdminArticlesIndex({articles: @articles})
    @page.render()