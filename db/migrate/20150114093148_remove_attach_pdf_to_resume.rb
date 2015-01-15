class RemoveAttachPdfToResume < ActiveRecord::Migration
  def change
    remove_column :resumes, :attachPdf, :string
    add_column :resumes, :attach_pdf, :string
  end
end
