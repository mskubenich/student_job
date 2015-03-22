class StudentJob.Views.AdminArticlesNewEdit extends Backbone.View

  template: HandlebarsTemplates['admin/articles/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template({ article: this.model.toJSON(), errors: this.errors })
    $('.ckeditor').ckeditor({
#      optional config
    });

  initialize: (options = {}) ->
    if options.article
      this.model = options.article
    else
      this.model = new StudentJob.Models.AdminArticle()

  events: {
    'click #admin-article-form input[type="submit"]': 'onFormSubmit'
  }

  onFormSubmit: (e) ->
    $('#admin-article-form textarea.ckeditor').html CKEDITOR.instances.body.getData()

    e.preventDefault()
    model = this.model
    router = this.router

    this.$el.find('input[name], textarea[name]').each ->
      model.set(this.name, this.value)

    self = this

    console.log JSON.stringify(this.model)

    this.model.save( null, {
      success: (model, response) ->
        showAlert 'success', 'Article successfuly updated !'
        self.undelegateEvents();
        router.navigate("/admin/articles", true)
      error: (model, response) ->
        self.errors = response.responseJSON.errors
        self.render()
    })