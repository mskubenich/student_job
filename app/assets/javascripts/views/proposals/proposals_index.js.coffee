class StudentJob.Views.ProposalsIndex extends Backbone.View

  initialize: (options) ->
    @proposals = options.proposals

  template: HandlebarsTemplates['proposals/index']

  el: ->
    $('#container')

  render: ->
    @proposals.fetch
      async: false
    $(@$el).html @template( proposals: @proposals.toJSON() )