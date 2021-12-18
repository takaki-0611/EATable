ActiveAdmin.register Book do
  permit_params :user_id, :course_id, :day, :time, :headcount

  index do
    selectable_column
    id_column
    column :course_id
    column :day
    column :time
    column :headcount
    column :created_at
    column :updated_at
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :course_id, :day, :time, :headcount
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :course_id, :day, :time, :headcount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
