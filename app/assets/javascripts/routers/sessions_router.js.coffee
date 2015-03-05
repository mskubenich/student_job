class StudentJob.Routers.Sessions extends Backbone.Router

  routes:
    'signup': 'create'

  new: ->
    @page = new StudentJob.Views.SessionsNew
    @page.render()

  create: ->
    @page = new StudentJob.Views.UsersNew
    @page.render()
