class StudentJob.Routers.Pages extends StudentJob.Routers.Application

  routes:
    "": "index"

  index: ->
    @pagesIndexView = new StudentJob.Views.PagesIndex
    @pagesIndexView.render()
