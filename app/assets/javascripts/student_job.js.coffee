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
    Backbone.history.start()

$(document).ready ->
  StudentJob.initialize()

