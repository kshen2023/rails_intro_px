# app/admin/subjects.rb
ActiveAdmin.register Subject do
  permit_params :subject_name, :subject_description, :subject_code

  index do
    selectable_column
    id_column
    column :subject_name
    column :subject_description
    column :subject_code
    actions
  end

  filter :subject_name
  filter :subject_code

  form do |f|
    f.inputs do
      f.input :subject_name
      f.input :subject_description
      f.input :subject_code
    end
    f.actions
  end

  show do
    attributes_table do
      row :subject_name
      row :subject_description
      row :subject_code
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
