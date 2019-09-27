class RakutenBooks

	def initialize(keyword)
		@keyword = keyword
	end

	def run
		uri = URI.parse URI.encode("https://app.rakuten.co.jp/services/api/BooksTotal/Search/20170404?
							applicationId=#{ENV['RAKUTEN_API']}&keyword=#{@keyword}%E4%BA%88%E7%B4%84")
		response = JSON.load(Net::HTTP.get(uri))
		response
	end
end