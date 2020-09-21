# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://johawin.herokuapp.com/"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  add user_path #GET    /users/show(.:format)                                                                    users#show
  add new_user_session_path #GET    /users/sign_in(.:format)                                                                 users/sessions#new
  add          user_session_path #POST   /users/sign_in(.:format)                                                                 users/sessions#create
  add destroy_user_session_path #DELETE /users/sign_out(.:format)                                                                users/sessions#destroy
  add   new_user_password_path #GET    /users/password/new(.:format)                                                            devise/passwords#new
  add  edit_user_password_path #GET    /users/password/edit(.:format)                                                           devise/passwords#edit
  add       user_password_path #PATCH  /users/password(.:format)                                                                devise/passwords#update
                       #PUT    /users/password(.:format)                                                                devise/passwords#update
                   #POST   /users/password(.:format)                                                                devise/passwords#create
  add cancel_user_registration_path #GET    /users/cancel(.:format)                                                                  users/registrations#cancel
  add  new_user_registration_path #GET    /users/sign_up(.:format)                                                                 users/registrations#new
  add edit_user_registration_path #GET    /users/edit(.:format)                                                                    users/registrations#edit
  add      user_registration_path #PATCH  /users(.:format)                                                                         users/registrations#update
                          #PUT    /users(.:format)                                                                         users/registrations#update
                          #DELETE /users(.:format)                                                                         users/registrations#destroy
                          #POST   /users(.:format)                                                                         users/registrations#create
add              sign_in_path #GET    /sign_in(.:format)                                                                       users/sessions#new
add sign_out_path #GET    /sign_out(.:format)                                                                      users/sessions#destroy
                  
                 User.find_each do |user|
                  add oth_eva_path(user.url_token), lastmod: user.updated_at #GET    /oth_eva/new/:url_token(.:format)                                                        oth_eva#new
                end
           
                add           oth_eva_create_path #POST   /oth_eva/create(.:format)                                                                oth_eva#create
                add        oth_eva_recommend_path #GET    /oth_eva/recommend(.:format)                                                             oth_eva#recommend
                add              my_eva_new_path #GET    /my_eva/new(.:format)                                                                    my_eva#new
                add          my_eva_create_path #POST   /my_eva/create(.:format)                                                                 my_eva#create
          
            MyEva.find_each do |my_eva|
              add oth_eva_destroy_path(my_eva.id), :lastmod => my_eva.updated_at #DELETE /my_eva/show/:id(.:format)                                                               my_eva#destroy
              add my_eva_show_path(my_eva.id), :lastmod => my_eva.updated_at  #GET    /my_eva/show/:id(.:format)                                                               my_eva#show
              add  my_eva_edit_path(my_eva.id), :lastmod => my_eva.updated_at  #GET    /my_eva/edit/:id(.:format)                                                               my_eva#edit
              add  edit_my_eva_path(my_eva.id), :lastmod => my_eva.updated_at  #GET    /my_eva/:id/edit(.:format)                                                               my_eva#edit
              add       my_eva_path(my_eva.id), :lastmod => my_eva.updated_at  #PATCH  /my_eva/:id(.:format)                                                                    my_eva#update
                          #PUT    /my_eva/:id(.:format)                                                                    my_eva#update
            end
                
            add    top_index_path #GET    /top/index(.:format)                                                                     top#index
            add                     root_path #GET    /                                                                                        top#index
            add                    about_path #GET    /about(.:format)                                                                         top#about
end
