RailsAdmin.config do |config|

  ### Popular gems integration
  config.parent_controller = 'ApplicationController'

  config.authorize_with do
    unless current_user.try(:admin?)
      flash[:error] = "Você não tem autorização pra acessar essa pagina!"
      redirect_to main_app.root_path
    end
  end


  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end

  config.main_app_name = ["Mão Direita", "Adminstração"]

  config.model 'Ckeditor' do
    visible false
  end

  config.model 'Ckeditor::Asset' do
    visible false
  end

  config.model 'Ckeditor::AttachmentFile' do
    visible false
  end

  config.model 'Ckeditor::Picture' do
    visible false
  end

  config.model 'User' do
    create do
      field :name
      field :email
      field :password
      field :password_confirmation
      field :role
    end

    edit do
      field :name
      field :email
      field :password
      field :password_confirmation
      field :role
    end
  end

  config.model Post do
    create do
      field :category
      field :title
      field :image, :carrierwave
      field :body, :ck_editor, :text do
        label 'Texto'
      end

      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end

    end

    edit do
      field :category
      field :title
      field :image
      field :body, :ck_editor, :text do
        label 'Texto'
      end
    end
  end

end
