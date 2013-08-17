class PokemonStatsController < ApplicationController
  # GET /pokemon_stats
  # GET /pokemon_stats.json
  def index
    @pokemon_stats = PokemonStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pokemon_stats }
    end
  end

  # GET /pokemon_stats/1
  # GET /pokemon_stats/1.json
  def show
    @pokemon_stat = PokemonStat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pokemon_stat }
    end
  end

  # GET /pokemon_stats/new
  # GET /pokemon_stats/new.json
  def new
    @pokemon_stat = PokemonStat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pokemon_stat }
    end
  end

  # GET /pokemon_stats/1/edit
  def edit
    @pokemon_stat = PokemonStat.find(params[:id])
  end

  # POST /pokemon_stats
  # POST /pokemon_stats.json
  def create
    @pokemon_stat = PokemonStat.new(params[:pokemon_stat])

    respond_to do |format|
      if @pokemon_stat.save
        format.html { redirect_to pokemon_stats_url, notice: 'Pokemon stat was successfully created.' }
        format.json { render json: @pokemon_stat, status: :created, location: @pokemon_stat }
      else
        format.html { render action: "new" }
        format.json { render json: @pokemon_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pokemon_stats/1
  # PUT /pokemon_stats/1.json
  def update
    @pokemon_stat = PokemonStat.find(params[:id])

    respond_to do |format|
      if @pokemon_stat.update_attributes(params[:pokemon_stat])
        format.html { redirect_to @pokemon_stat, notice: 'Pokemon stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pokemon_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_stats/1
  # DELETE /pokemon_stats/1.json
  def destroy
    @pokemon_stat = PokemonStat.find(params[:id])
    @pokemon_stat.destroy

    respond_to do |format|
      format.html { redirect_to pokemon_stats_url }
      format.json { head :no_content }
    end
  end
end
