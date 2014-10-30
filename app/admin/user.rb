ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :first_name, :last_name,
                :position, :company, :location, :description, :website, :facebook_url,
                :twitter_handle, :photo, :technology_id, technology_ids: []

  form(html: { :enctype => "multipart/form-data" }) do |f|
    inputs do
      input :email
      input :password, required: false
      input :password_confirmation
      input :first_name
      input :last_name
      input :position
      input :company
      input :location
      input :description
      input :website
      input :facebook_url
      input :twitter_handle
      input :primary_technology
      input :technologies
      input :photo, as: :file
    end
    actions
  end

  show do
    attributes_table do
      row :email
      row :first_name
      row :last_name
      row :position
      row :company
      row :location
      row :description
      row :website
      row :facebook_url
      row :twitter_handle
      row :primary_technology do
        user.primary_technology.try(:name)
      end
      row :technologies do
        user.technologies.map(&:name)
      end
      row :photo do
        image_tag(user.photo.url)
      end
    end
  end

  controller do
    def update
      @user = User.find(params[:id])
      if permitted_params[:user][:password].blank?
        @user.update_without_password(permitted_params[:user])
      else
        @user.update_attributes(permitted_params[:user])
      end

      if @user.errors.blank?
        redirect_to admin_users_path, :notice => "User updated successfully."
      else
        render :edit
      end
    end
  end
end
