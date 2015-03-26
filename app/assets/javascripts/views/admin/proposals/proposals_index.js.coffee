class StudentJob.Views.ProposalsIndex extends Backbone.View

  initialize: (options) ->
    @proposals = options.proposals

  template: HandlebarsTemplates['proposals/index']

  el: ->
    $('#container')

  render: ->
    @proposals.fetch
      async: false
    console.log JSON.stringify(@proposals)
    $(@$el).html @template( proposals: @proposals.toJSON() )