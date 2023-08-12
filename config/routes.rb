Rails.application.routes.draw do
  root 'games#play'
  get "/play", to: "games#play"
end
