When(/^I visit the shoe store home page$/) do
  Watir::Wait.until{@browser.text.include? "Welcome to Shoe Store!"}
end

Then(/^I should see the link for each month's sales$/) do
  months = ["January", "February", "March", "April", "May", "June", "July",
            "August", "September", "October", "November", "December"]

  months.each do |m|
    expect(@browser.link text: "#{m}").to exist
  end
end