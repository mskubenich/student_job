class StudentJob.Routers.Sessions extends StudentJob.Routers.Application

  routes:
    'login': 'new'
    'logout': 'destroy'

  new: ->
    @page = new StudentJob.Views.SessionsNew
    @page.router = this
    @page.render()

  destroy: ->
    $.removeCookie 'session_token'
    this.navigate("/", true)
    updateHeader()
