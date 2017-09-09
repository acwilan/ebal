class InstrumentCategoriesController < ApplicationController
	
	def index
		@instrument_categories = InstrumentCategory.paginate(page: params[:page])
	end
	
	def new
		@instrument_category = InstrumentCategory.new
	end
	
	def create
		@instrument_category = InstrumentCategory.new(category_params)
		if @instrument_category.save
			flash[:success] = 'Categoría creada exitosamente'
			redirect_to instrument_categories_path
		else
			render 'new'
		end
	end
	
	def edit
		@instrument_category = InstrumentCategory.find(params[:id])
	end
	
	def update
		@instrument_category = InstrumentCategory.find(params[:id])
		if @instrument_category.update_attributes(category_params)
			flash[:success] = 'La categoría fue actualizada'
			redirect_to instrument_categories_path
		else
			render 'edit'
		end
	end
	
	def destroy
		InstrumentCategory.find(params[:id]).destroy
		flash[:success] = 'Categoría de instrumentos eliminada'
		redirect_to instrument_categories_path
	end
	
	private
	
		def category_params
			params.require(:instrument_category).permit(:name)
		end
	
end
