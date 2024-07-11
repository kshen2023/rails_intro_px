# app/admin/students.rb
ActiveAdmin.register Student do
  permit_params :student_name, :student_age, :student_grade

  index do
    selectable_column
    id_column
    column :student_name
    column :student_age
    column :student_grade
    actions
  end

  filter :student_name
  filter :student_age
  filter :student_grade

  form do |f|
    f.inputs do
      f.input :student_name
      f.input :student_age
      f.input :student_grade
    end
    f.actions
  end

  show do
    attributes_table do
      row :student_name
      row :student_age
      row :student_grade
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
