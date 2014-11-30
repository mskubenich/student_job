window.StudentJob =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    window.routerPages = new StudentJob.Routers.Pages()
    window.routerProposals = new StudentJob.Routers.Proposals()
    Backbone.history.start()

$(document).ready ->
  StudentJob.initialize()

