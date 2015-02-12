Blogs::Application.routes.draw do
  resources :blogs
  resources :articles

  # constraints(Subdomain) do
  #   match '/' => 'blogs#show'
  # end

  match '', to: 'blogs#show', constraints: lambda { |r| r.subdomain.present? && r.subdomain != 'www' }

  root to: 'blogs#index'
end
