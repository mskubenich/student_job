class StudentJob.Routers.Pages extends Backbone.Router

  routes:
    "": "index"

  index: ->
    console.log 'here'
    @pagesIndexView = new StudentJob.Views.PagesIndex
    @pagesIndexView.render()
