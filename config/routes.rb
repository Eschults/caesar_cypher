Rails.application.routes.draw do
  root "caesar#home"
  get "decrypt" => "caesar#decrypt"
end
