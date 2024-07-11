# app/admin/sections.rb
ActiveAdmin.register Section do
  permit_params :section_name, :section_description, :school_id

  index do
    selectable_column
    id_column
    column :section_name
    column :section_description
    column :school
    actions
  end

  filter :section_name
  filter :school

  form do |f|
    f.inputs do
      f.input :section_name
      f.input :section_description
      f.input :school, as: :select, collection: School.all.collect { |school| [school.school_name, school.id] }
    end
    f.actions
  end

  show do
    attributes_table do
      row :section_name
      row :section_description
      row :school
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
