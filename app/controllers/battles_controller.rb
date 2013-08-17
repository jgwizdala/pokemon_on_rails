class BattlesController < ApplicationController
  # GET /battles
  # GET /battles.json
  def index
    @battles = Battle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @battles }
    end
  end

  # GET /battles/1
  # GET /battles/1.json
  def show
    @battle = Battle.find(params[:id])
    @trainer = Trainer.find(@battle.trainer_id)
    @enemy = Trainer.find(@battle.enemy_id)
    
    @trainer_active_pokemon = @trainer.pokemons.find(@trainer.active_pokemon_id)
    @enemy_active_pokemon = @enemy.pokemons.find(@enemy.active_pokemon_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @battle }
    end
  end

  # GET /battles/new
  # GET /battles/new.json
  def new
    @battle = Battle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @battle }
    end
  end

  # GET /battles/1/edit
  def edit
    @battle = Battle.find(params[:id])
  end

  # POST /battles
  # POST /battles.json
  def create
    @battle = Battle.new(params[:battle])

    respond_to do |format|
      if @battle.save
        format.html { redirect_to @battle, notice: 'Battle was successfully created.' }
        format.json { render json: @battle, status: :created, location: @battle }
      else
        format.html { render action: "new" }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /battles/1
  # PUT /battles/1.json
  def update
    @battle = Battle.find(params[:id])

    respond_to do |format|
      if @battle.update_attributes(params[:battle])
        format.html { redirect_to @battle, notice: 'Battle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battles/1
  # DELETE /battles/1.json
  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy

    respond_to do |format|
      format.html { redirect_to battles_url }
      format.json { head :no_content }
    end
  end
  
  def attack
    @battle = Battle.find(params[:battle_id])
    @move = Moves.find()
    @pokemon = @trainer.pokemons.find(params[:pokemon_id])
    
    @active_pokemon = @pokemon.name
    
    respond_to do |format|
      @trainer.update_attribute(:active_pokemon_id, @pokemon.id)
      format.js   { render :layout => false }
    end
  end
end
