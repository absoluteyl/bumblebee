require 'uri'
require 'cgi'

module WithinHelpers
  def with_scope(locator)
    locator ? within(locator) { yield } : yield
  end
end

World WithinHelpers

When /^(?:|the .+ )goes to page - "([^"]*)"$/ do |expect_path|
  visit expect_path
  sleep 1
end

When /^(?:|the .+ )presses "([^"]*)"(?: within "([^"]*)")?$/ do |button, selector_name|
  with_scope(to_selector(selector_name)) do
    click_button(button)
  end
end

When /^(?:|the .+ )clicks "([^"]*)"(?: within "([^"]*)")?$/ do |link, selector_name|
  with_scope(to_selector(selector_name)) do
    click_link(link, exact: false)
  end
end

When /^(?:|the .+ )fills in "([^"]*)" with "([^"]*)"(?: within "([^"]*)")?$/ do |field, value, selector_name|
  with_scope(to_selector(selector_name)) do
    fill_in(field_id(field), with: value, match: :prefer_exact)
  end
end

Then /^(?:|the .+ )should see "([^\\"]|\\")*"(?: within "([^"]*)")?$/ do |text, selector_name|
  with_scope(to_selector(selector_name)) do
    expect(page).to have_content(text)
  end
end

Then /^(?:|the .+ )should not see "([^"]*)"(?: within "([^"]*)")?$/ do |text, selector_name|
  with_scope(to_selector(selector_name)) do
    if self.respond_to? :expect
      expect(page).to have_no_content(text)
    else
      assert page.has_no_content?(text)
    end
  end
end

Then /^(?:|the .+ )should be at page - "(.*?)"$/ do |expect_path|
  current_path  = URI.parse(current_url).path
  current_query = URI.parse(current_url).query

  if current_query.blank?
    expect(current_path).to eql expect_path
  else
    current_query = URI.unescape(current_query)
    expect("#{current_path}?#{current_query}").to eq expect_path
  end
end
