Date::DATE_FORMATS[:default] = "%d-%m-%Y"

RailsAdmin.config do |config|

  config.main_app_name = Proc.new { |controller| [ "Martha Restrepo", "Inmobiliario" ] }

  ### Popular gems integration
  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method &:current_user

  ## == Cancan ==
  config.authorize_with :cancan

  config.actions do
    # root actions
    dashboard                     # mandatory
    # collection actions
    index                         # mandatory
    new
    export
    bulk_delete
    # member actions
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.included_models = [ 'Property', 'PropertyType', 'City', 'Neighborhood' , 'User', 'Owner', 'PropertyAttachment' ]

  RailsAdmin.config {|c| c.label_methods << :description }
end