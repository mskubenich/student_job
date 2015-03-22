class StudentJob.Routers.AdminArticles extends StudentJob.Routers.Admin

  routes:
    'admin/articles': 'index'
    'admin/articles/new': 'new'
    'admin/articles/:id/destroy': 'destroy'
    'admin/articles/:id/edit': 'edit'

  index: ->
    @articles = new StudentJob.Collections.AdminArticles()
    @page = new StudentJob.Views.AdminArticlesIndex({articles: @articles})
    @articles.fetch()

  new: ->
    @page = new StudentJob.Views.AdminArticlesNewEdit()
    @page.router = this
    @page.render()

  edit: (id) ->
    @article = new StudentJob.Models.AdminArticle(id: id)
    @article.fetch({async: false})
    @page = new StudentJob.Views.AdminArticlesNewEdit(article: @article)
    @page.router = this
    @page.render()


  destroy: (id) ->
    article = @articles.get(id)
    if confirm('Are you sure you wont to destroy article "' + article.get('title') + '" ?')
      article.destroy()
      this.navigate("/admin/articles", true)
      showAlert 'success', 'Article successfully removed.'