# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                            users_profile GET    /users/profile(.:format)                                                                          users#profile
#                         new_user_session GET    /users/sign_in(.:format)                                                                          users/sessions#new
#                             user_session POST   /users/sign_in(.:format)                                                                          users/sessions#create
#                     destroy_user_session DELETE /users/sign_out(.:format)                                                                         users/sessions#destroy
#                        new_user_password GET    /users/password/new(.:format)                                                                     devise/passwords#new
#                       edit_user_password GET    /users/password/edit(.:format)                                                                    devise/passwords#edit
#                            user_password PATCH  /users/password(.:format)                                                                         devise/passwords#update
#                                          PUT    /users/password(.:format)                                                                         devise/passwords#update
#                                          POST   /users/password(.:format)                                                                         devise/passwords#create
#                 cancel_user_registration GET    /users/cancel(.:format)                                                                           users/registrations#cancel
#                    new_user_registration GET    /users/sign_up(.:format)                                                                          users/registrations#new
#                   edit_user_registration GET    /users/edit(.:format)                                                                             users/registrations#edit
#                        user_registration PATCH  /users(.:format)                                                                                  users/registrations#update
#                                          PUT    /users(.:format)                                                                                  users/registrations#update
#                                          DELETE /users(.:format)                                                                                  users/registrations#destroy
#                                          POST   /users(.:format)                                                                                  users/registrations#create
#                    new_user_confirmation GET    /users/confirmation/new(.:format)                                                                 devise/confirmations#new
#                        user_confirmation GET    /users/confirmation(.:format)                                                                     devise/confirmations#show
#                                          POST   /users/confirmation(.:format)                                                                     devise/confirmations#create
#                          new_user_unlock GET    /users/unlock/new(.:format)                                                                       devise/unlocks#new
#                              user_unlock GET    /users/unlock(.:format)                                                                           devise/unlocks#show
#                                          POST   /users/unlock(.:format)                                                                           devise/unlocks#create
#                            work_comments GET    /works/:work_id/comments(.:format)                                                                comments#index
#                                          POST   /works/:work_id/comments(.:format)                                                                comments#create
#                         new_work_comment GET    /works/:work_id/comments/new(.:format)                                                            comments#new
#                        edit_work_comment GET    /works/:work_id/comments/:id/edit(.:format)                                                       comments#edit
#                             work_comment GET    /works/:work_id/comments/:id(.:format)                                                            comments#show
#                                          PATCH  /works/:work_id/comments/:id(.:format)                                                            comments#update
#                                          PUT    /works/:work_id/comments/:id(.:format)                                                            comments#update
#                                          DELETE /works/:work_id/comments/:id(.:format)                                                            comments#destroy
#                                    works GET    /works(.:format)                                                                                  works#index
#                                          POST   /works(.:format)                                                                                  works#create
#                                 new_work GET    /works/new(.:format)                                                                              works#new
#                                edit_work GET    /works/:id/edit(.:format)                                                                         works#edit
#                                     work GET    /works/:id(.:format)                                                                              works#show
#                                          PATCH  /works/:id(.:format)                                                                              works#update
#                                          PUT    /works/:id(.:format)                                                                              works#update
#                                          DELETE /works/:id(.:format)                                                                              works#destroy
#                                     user GET    /u/:id(.:format)                                                                                  user#profile
#                               pages_home GET    /pages/home(.:format)                                                                             pages#home
#                              pages_about GET    /pages/about(.:format)                                                                            pages#about
#                                     root GET    /                                                                                                 pages#home
#                                          GET    /                                                                                                 pages#home
#         turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
#         turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
#        turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#        new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#       edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#                                          PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create

Rails.application.routes.draw do
  
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
  resources :works do 
    resources :comments

  end

  get 'u/:id', to: 'user#profile', as: 'user'
  get 'pages/home'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get '/', to: 'pages#home'
  direct :twitter do
    "https://twitter.com/lyceum_io"
  end
end
