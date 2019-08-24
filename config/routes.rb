# frozen_string_literal: true

Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  root to: "pages#show", page: "home"
end
