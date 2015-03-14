window.StudentJob =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    window.routerPages = new StudentJob.Routers.Pages()
    window.routerProposals = new StudentJob.Routers.Proposals()
    window.routerVacantions = new StudentJob.Routers.Vacantions()
    window.routerCategorys = new StudentJob.Routers.Categorys()
    window.routerArticles = new StudentJob.Routers.Articles()
    window.routerSessions = new StudentJob.Routers.Sessions()
    window.routerUsers = new StudentJob.Routers.Users()
    window.routerUsers = new StudentJob.Routers.AdminUsers()
    Backbone.history.start()

$(document).ready ->
  StudentJob.initialize()

  redirectToLogin = ->
    locationhref = '#login'
    location.href = locationhref

  $doc = $(document)
  $doc.ajaxSend (event, xhr) ->
    authToken = $.cookie('session_token')
    if authToken
      xhr.setRequestHeader 'Authorization', 'Bearer ' + authToken
  $doc.ajaxError (event, xhr) ->
    if xhr.status == 401
      location.href = '#'
      showAlert 'danger', xhr.responseJSON.errors
