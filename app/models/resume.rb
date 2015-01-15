class Resume < ActiveRecord::Base
  belongs_to :employee

  delegate :email, :name, to: :employee

  mount_uploader :attach_pdf, AttachResumeUploader
end
