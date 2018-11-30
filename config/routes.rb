Rails.application.routes.draw do
  get 'message_for/:username', to: 'message_for#show'
end
