ActiveAdmin.register Course do
  permit_params :rest_id, :name, :total_payment, :is_booked

  form do |f|
    f.inputs do
      f.input :name
      f.input :total_payment
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :rest_id, :name, :total_payment, :is_booked
  #
  # or
  #
  # permit_params do
  #   permitted = [:rest_id, :name, :total_payment, :is_booked]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
