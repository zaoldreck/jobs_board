class AddEmployeeIdToResumes < ActiveRecord::Migration
  def change
    add_reference :resumes, :employee, index: true
  end
end
