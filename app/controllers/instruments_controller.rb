class InstrumentsController < ApplicationController
	
	def index
		@instruments = Instrument.paginate(page: params[:page])
	end
	
	def new
		@instrument = Instrument.new
		@categories = InstrumentCategory.all.collect { |ic| [ ic.name, ic.id ] }
	end
	
	def create
		@instrument = Instrument.new(instrument_params)
		@categories = InstrumentCategory.all.collect { |ic| [ ic.name, ic.id ] }
		if @instrument.save
			flash[:success] = 'Instrumento creado exitosamente'
			redirect_to instruments_path
		else
			render 'new'
		end
	end
	
	def edit
		@instrument = Instrument.find params[:id]
		@categories = InstrumentCategory.all.collect { |ic| [ ic.name, ic.id ] }
	end
	
	def update
		@instrument = Instrument.find params[:id]
		@categories = InstrumentCategory.all.collect { |ic| [ ic.name, ic.id ] }
		if @instrument.update_attributes(instrument_params)
			flash[:success] = 'El instrumento fue actualizado'
			redirect_to instruments_path
		else
			render 'edit'
		end
	end
	
	def destroy
		@instrument = Instrument.find params[:id]
		if @instrument.destroy
			flash[:success] = 'El instrumento fue eliminado'
		end
		redirect_to instruments_path
	end
	
	private
	
		def instrument_params
			params.require(:instrument).permit(:name,:instrument_category_id)
		end
	
end
