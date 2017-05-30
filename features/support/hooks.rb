Before do
  @browser = Watir::Browser.new
  @browser.goto "https://rb-shoe-store.herokuapp.com/"
  Watir.default_timeout = 10
end

After do
  @browser.close
end