Given "I am a visitor" do
  # this does nothing, just here for the sake of readability
end

When "I go to the home page" do
  visit root_path
end

Then /^I see the text "(.*?)"$/ do |text|
  expect(page).to have_content(text)
end


