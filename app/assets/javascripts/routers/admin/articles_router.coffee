class StudentJob.Routers.AdminArticles extends StudentJob.Routers.Admin

  routes:
    'admin/articles': 'index'
    'admin/articles/new': 'new'
    'admin/articles/:id/destroy': 'destroy'

  index: ->
    @articles = new StudentJob.Collections.AdminArticles()
    @page = new StudentJob.Views.AdminArticlesIndex({articles: @articles})
    @articles.fetch()

  new: ->
    @page = new StudentJob.Views.AdminArticlesNew()
    @page.router = this
    @page.render()


  destroy: (id) ->
    article = @articles.get(id)
    if confirm('Are you sure you wont to destroy article "' + article.get('title') + '" ?')
      article.destroy()
      this.navigate("/admin/articles", true)
      showAlert 'success', 'Article successfully removed.'