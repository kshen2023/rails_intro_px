# app/admin/teachers.rb
ActiveAdmin.register Teacher do
  permit_params :teacher_name, :teacher_email, :teacher_phone

  index do
    selectable_column
    id_column
    column :teacher_name
    column :teacher_email
    column :teacher_phone
    actions
  end

  filter :teacher_name
  filter :teacher_email
  filter :teacher_phone

  form do |f|
    f.inputs do
      f.input :teacher_name
      f.input :teacher_email
      f.input :teacher_phone
    end
    f.actions
  end

  show do
    attributes_table do
      row :teacher_name
      row :teacher_email
      row :teacher_phone
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
