window.StudentJob =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    window.routerProposals = new StudentJob.Routers.Proposals()
    console.log 'Hello from Backbone!'
    Backbone.history.start()

$(document).ready ->
  StudentJob.initialize()

