require 'test_helper'

class PokemonStatsControllerTest < ActionController::TestCase
  setup do
    @pokemon_stat = pokemon_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokemon_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokemon_stat" do
    assert_difference('PokemonStat.count') do
      post :create, pokemon_stat: { attack: @pokemon_stat.attack, defense: @pokemon_stat.defense, hp: @pokemon_stat.hp, name: @pokemon_stat.name, special_attack: @pokemon_stat.special_attack, special_defense: @pokemon_stat.special_defense, speed: @pokemon_stat.speed }
    end

    assert_redirected_to pokemon_stat_path(assigns(:pokemon_stat))
  end

  test "should show pokemon_stat" do
    get :show, id: @pokemon_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokemon_stat
    assert_response :success
  end

  test "should update pokemon_stat" do
    put :update, id: @pokemon_stat, pokemon_stat: { attack: @pokemon_stat.attack, defense: @pokemon_stat.defense, hp: @pokemon_stat.hp, name: @pokemon_stat.name, special_attack: @pokemon_stat.special_attack, special_defense: @pokemon_stat.special_defense, speed: @pokemon_stat.speed }
    assert_redirected_to pokemon_stat_path(assigns(:pokemon_stat))
  end

  test "should destroy pokemon_stat" do
    assert_difference('PokemonStat.count', -1) do
      delete :destroy, id: @pokemon_stat
    end

    assert_redirected_to pokemon_stats_path
  end
end
