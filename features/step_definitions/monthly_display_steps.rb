When(/^I view the (.*?) sale page$/) do |month|
  (@browser.link text: "#{month}").click
  Watir::Wait.until{ (@browser.div class: 'title').present? }
  ((@browser.div class: 'title').text).include? "#{month}'s Shoes"
  @number_of_shoes = (@browser.ul id: 'shoe_list').lis.length
end

Then(/^Each shoe should have a description paragraph$/) do
  descriptions = @browser.tds class: 'shoe_result_value shoe_description'
  expect(@number_of_shoes).to eql descriptions.size

  descriptions.each do |description|
    expect(description.text.empty?).to eql false
  end
end

And(/^Each shoe should have an image displayed$/) do
  images = @browser.tds class: 'shoe_image'
  expect(@number_of_shoes).to eql images.size
end

And(/^Each shoe should have a suggested price$/) do
  prices = @browser.tds class: 'shoe_result_value shoe_price'
  expect(@number_of_shoes).to eql prices.size

  prices.each do|price|
    expect(price.text[0]).to eql "$"
  end
end