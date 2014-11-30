class StudentJob.Routers.Proposals extends Backbone.Router

  routes:
    'proposals': 'index'
    'proposals/:id': 'show'

  index: ->
    @proposals = new StudentJob.Collections.Proposals()

    @proposalsIndexView = new StudentJob.Views.ProposalsIndex
      proposals: @proposals

    @proposalsIndexView.render()

  show: (id) ->
    @proposal = new StudentJob.Models.Proposal(id)

    @proposalsShowView = new StudentJob.Views.ProposalsShow
      proposal: @proposal

    @proposalsShowView.render()