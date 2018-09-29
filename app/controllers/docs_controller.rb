class DocsController < ApplicationController
	before_action :find_doc, only:[:show, :edit, :update, :destroy]
	
	def index
		@docs = Doc.all.order("created_at DESC")
	end

	def new
		@doc = Doc.new
	end

	def show

	end

	def edit
	end

	def update
	end

	def destroy
	end

	def create
		@doc = Doc.new(doc_params)

		if @doc.save
			redirect_to @doc
		else
			render 'new'
		end
	end

	private

		def find_doc
			@doc = 	Doc.find(paarams[:id])
		end

		def doc_params
			paarams.require(:doc).permit(:title, :content)
		end
end
