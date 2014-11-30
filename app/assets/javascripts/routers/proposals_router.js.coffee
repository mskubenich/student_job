class StudentJob.Routers.Proposals extends Backbone.Router

#  initialize: ->

  routes:
    "proposals": "index"

  index: ->
    @proposals = new StudentJob.Collections.Proposals()
    @proposals.fetch()

    @proposalsIndexView = new StudentJob.Views.ProposalsIndex
      proposals: @proposals

    @proposalsIndexView.render()