class AddDetailToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :experience, :string
    add_column :resumes, :education, :string
    add_column :resumes, :phone, :string
    add_column :resumes, :email, :string
    add_column :resumes, :name, :string
  end
end
