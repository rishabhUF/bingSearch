require 'rest-client'

class Bing
	URL = 'http://bing.com/search?q='

	def self.search(query)
		result = RestClient.get(URL + self.clean(query))
	end

	def self.clean(query)
		query.strip.gsub(/\s+/,'+')
	end
end

puts Bing.search('cats are awesome')

