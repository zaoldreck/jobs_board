class AddAttachPdfToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :attachPdf, :string
  end
end
