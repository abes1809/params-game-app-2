Rails.application.routes.draw do
  get "/params_game_url" => 'params_game#params_game_name_method'
  get "/params_guessing_game" => 'params_game#params_guessing_game_method'
  get 'r/:guess'=> 'params_game#params_game_segment'
end
