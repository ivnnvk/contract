class ContractsController < ApplicationController
	
	def new
	end
	
	def create
		render plain: params[:contract].inspect
	end
end
