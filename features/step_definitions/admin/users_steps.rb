Given /^I see users list:$/ do |table|
  rows = table.raw

  rows.each_with_index do |row, row_index|
    row.each_with_index do |column, column_index|
      expect(find("#admin-users-table tbody tr:nth-child(#{ row_index + 1}) td:nth-child(#{ column_index + 1})").text).to eq(rows[row_index][column_index])
    end
  end
end