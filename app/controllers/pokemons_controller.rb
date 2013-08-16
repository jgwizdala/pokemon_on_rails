class PokemonsController < ApplicationController

  def create
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = @trainer.pokemons.create(params[:pokemon])
    redirect_to trainer_path(@trainer)
  end
  
  def edit
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = Pokemon.find(params[:id])
  end
  
  def update
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = Pokemon.find(params[:id])

    respond_to do |format|
      if @pokemon.update_attributes(params[:pokemon])
        format.html { redirect_to @trainer, notice: 'Pokemon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy 
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = @trainer.pokemons.find(params[:id])
    @pokemon.destroy
    redirect_to trainer_path(@trainer)
  end
end
