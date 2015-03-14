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