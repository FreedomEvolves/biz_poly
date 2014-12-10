class InteractionsController < ApplicationController
  def new
  	@context = context
    @interaction = @data.interactions.build
  end

  def create
  	@context = context
  	@interaction = @context.interactions.new(interaction_params)

  	if @interaction.save
  		redirect_to context_url(context), notice: "Interaction created."
  	end
  end

  def edit
  	@context = context
  	@interaction = @context.interactions.find(params[:id])
  end

  def update
  	@context = context
  	@interaction = @context.interactions.find(params[:id])
  	if @interaction.update_attributes(interaction_params)
  		redirect_to context_url(context), notice: "Updated."
  	end
  end
	private
		def interaction_params
			params.require(:interaction).permit!
		end

		def context
			if params[:person_id]
				@data = Person.find(params[:person_id])
			else
				@data = Business.find(params[:business_id])
			end
		end

		def context_url(context)
			if Person === context  #yep, three equal signs!
				person_path(context)
			else
				business_path(context)
			end
		end
end
