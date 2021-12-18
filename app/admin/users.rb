ActiveAdmin.register User do
  permit_params :name

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :kana_first_name
    column :kana_last_name
    column :postal_code
    column :address
    column :phone_number
    column :is_deleted
    actions
  end

  show do |user|
    attributes_table(*user.class.columns.collect { |column| column.name.to_sym })
    panel "予約一覧" do
      table_for user.books do
        column :day
        column :time
        column :headcount
      end
    end
    active_admin_comments
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :address, :phone_number, :is_deleted
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :kana_first_name, :kana_last_name, :postal_code, :address, :phone_number, :is_deleted]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
