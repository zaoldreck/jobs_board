class RemoveNameEmailToResume < ActiveRecord::Migration
  def change
    remove_column :resumes, :name, :string
    remove_column :resumes, :email, :string
  end
end
