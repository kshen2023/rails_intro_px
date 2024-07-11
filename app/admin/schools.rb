# app/admin/schools.rb
ActiveAdmin.register School do
  permit_params :school_name, :school_description

  index do
    selectable_column
    id_column
    column :school_name
    column :school_description
    actions
  end

  filter :school_name
  filter :school_description

  form do |f|
    f.inputs do
      f.input :school_name
      f.input :school_description
    end
    f.actions
  end

  show do
    attributes_table do
      row :school_name
      row :school_description
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
