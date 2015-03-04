class StudentJob.Routers.Sessions extends Backbone.Router

  routes:
    "login": "new"

  new: ->
    @page = new StudentJob.Views.SessionsNew
    @page.render()
