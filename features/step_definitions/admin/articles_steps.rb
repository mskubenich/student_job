Given /^I see articles list:$/ do |table|
  rows = table.raw

  rows.each_with_index do |row, row_index|
    row.each_with_index do |column, column_index|
      expect(find("#admin-articles-table tbody tr:nth-child(#{ row_index + 1}) td:nth-child(#{ column_index + 1})").text).to eq(rows[row_index][column_index])
    end
  end
end

Given /^A minimal set of articles exist$/ do
  @article1 = create :article, title: 'We are open !'
  @article2 = create :article, title: 'Welcome to our site !'
end

Then /^I see article validation errors$/ do
  expect(page).to have_content('can\'t be blank')
end

Then /^I go to new article page$/ do
  wait_for_ajax
  page.execute_script("$('a[href=\"#admin/articles/new\"]')[0].click()")
end

When /^I fill body with "(.*)"$/ do |content|
  page.execute_script <<-SCRIPT
    CKEDITOR.instances['body'].setData("#{content}");
    $('textarea[name="body"]').text("#{content}");
  SCRIPT
end

Then /^Article titled "(.*)" should be created$/ do |title|
  sleep 1
  matched_articles = Article.where title: title
  expect(matched_articles.count).to eq(1)
end

Then /^Article "(.*)" should be destroyed$/ do |title|
  sleep 1
  matched_articles = Article.where title: title
  expect(matched_articles.count).to eq(0)
end

Then /^I remove first article$/ do
  wait_for_ajax
  all('.glyphicon-remove').first.click
end