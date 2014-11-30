class StudentJob.Views.ProposalsShow extends Backbone.View

  initialize: (options) ->
    @proposal = options.proposal

  template: HandlebarsTemplates['proposals/show']

  el: ->
    $('#container')

  render: ->
    @proposal.fetch
      async: false
    $(@$el).html @template( @proposal.toJSON() )