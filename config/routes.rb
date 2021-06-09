Rails.application.routes.draw do
  get "/", to: 'homepage#menu', as: "root"
  post "/answer_three", to: 'homepage#answer_three'
  get "/answer_three", to: 'homepage#answer_three'
  post "/answer_two", to: 'homepage#answer_two'
  get "/answer_two", to: 'homepage#answer_two'
  post "/answer_preone", to: 'homepage#answer_preone'
  get "/answer_preone", to: 'homepage#answer_preone'
  post "/answer_one", to: 'homepage#answer_one'
  get "/answer_one", to: 'homepage#answer_one'
  get "/test_three", to: 'homepage#test_three'
  get "/test_two", to: 'homepage#test_two'
  get "/test_preone", to: 'homepage#test_preone'
  get "/test_one", to: 'homepage#test_one'
end
