Rails.application.routes.draw do
  root "static_pages#home"
  get "oauth2callback", to: "static_pages#set_google_drive_token"
end
