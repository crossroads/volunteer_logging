Given /^my name is "([^"]*)"$/ do |name|
	FakeWeb.clean_registry
	FakeWeb.register_uri(:get, /#{Contacts.site}contacts\/search/, 
		:body => fake_contact(name) )
end

When /^I enter "([^"]*)" into the search field$/ do |query|
  fill_in('search', :with => query)
end

When /^click search$/ do
  click_button('Search')
end

Then /^I should see the records for all volunteers called "([^"]*)"$/ do |name|
  page.should have_content(name)
end


private

def fake_contact(name)
	name = name.split(' ')
	contact = [{:first_name	=>	name.first, 
							:last_name	=>	name.last,
							:email			=>	s'email@example.com'  }]
	contact.to_xml(:root=>'contacts')
end
	
	
