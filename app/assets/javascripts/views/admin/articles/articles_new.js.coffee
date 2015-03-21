class StudentJob.Views.AdminArticlesNew extends Backbone.View

  template: HandlebarsTemplates['admin/articles/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template({ article: this.model.toJSON().article, errors: this.errors })
    $('.ckeditor').ckeditor({
#      optional config
    });

  initialize: ->
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

    this.model.save( null, {
      success: (model, response) ->
        showAlert 'success', 'Article successfuly created !'
        router.navigate("/admin/articles", true)
      error: (model, response) ->
        self.errors = response.responseJSON.errors
        console.log(JSON.stringify(model))
        self.render()
    })