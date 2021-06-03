Rails.application.routes.draw do
  get "/", to: 'homepage#home', as: "root"
  post "/answer", to: 'homepage#answer'
end
