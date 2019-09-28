class Api::V1::SearchesController < ApplicationController
	def index
		if params[:keyword]
			@items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
		end
	end
end
