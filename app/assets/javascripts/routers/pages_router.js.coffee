class StudentJob.Routers.Pages extends Backbone.Router

  routes:
    "": "index"

  index: ->
    @pagesIndexView = new StudentJob.Views.PagesIndex
    @pagesIndexView.render()
