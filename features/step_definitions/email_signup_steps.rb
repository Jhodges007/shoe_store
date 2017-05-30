When(/^I input an email address$/) do
  @fake_email = "test_email@gmail.com"
  (@browser.input id: 'remind_email_input').send_keys("#{@fake_email}")
  (@browser.button id: 'remind_email_submit').click
end

Then(/^I should see a success verification$/) do
  Watir::Wait.until{ (@browser.div id: "flash").exists? }
  enrolled = (@browser.div class: "flash flash_success")
  expect(enrolled).to be_visible
  expect(enrolled.text).to eql "Thanks! We will notify you of our new shoes at this email: #{@fake_email}"
end