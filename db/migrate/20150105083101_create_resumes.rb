class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :description
      t.string :salary

      t.timestamps
    end
  end
end
