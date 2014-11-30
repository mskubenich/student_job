class StudentJob.Routers.Proposals extends Backbone.Router

  routes:
    "proposals": "index"

  index: ->
    @proposals = new StudentJob.Collections.Proposals()

    @proposalsIndexView = new StudentJob.Views.ProposalsIndex
      proposals: @proposals

    @proposalsIndexView.render()