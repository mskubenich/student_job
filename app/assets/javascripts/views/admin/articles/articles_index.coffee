class StudentJob.Views.AdminArticlesIndex extends Backbone.View

  initialize: (options) ->
    @articles = options.articles
    this.listenTo(@articles, "sync", this.render);

  template: HandlebarsTemplates['admin/articles/index']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template( articles: @articles.toJSON() )
    this.renderPagination()


  renderPagination: ->
    self = this
    pages_count = Math.ceil(@articles.total / 20) or 1
    start_page = @page or 1
    pagination = @$el.find('.articles-pagination')
    pagination.empty()
    pagination.removeData 'twbs-pagination'
    pagination.unbind 'page'
    pagination.twbsPagination
      totalPages: pages_count
      startPage: start_page
      visiblePages: 10
      onPageClick: (event, page) ->
        self.page = page
        self.articles.fetch data: {page: page}