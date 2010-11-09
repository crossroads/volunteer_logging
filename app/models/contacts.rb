class Contacts < ActiveResource::Base
	self.site = "http://sbs07:Beluga@demo.fatfreecrm.com/"

	def self.search(query)
		query.blank? ? [] : get(:search, :query => query).map { |attr| new(attr) }
	end

	def name
		"#{first_name} #{last_name}"
	end

end
