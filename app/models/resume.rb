class Resume < ActiveRecord::Base
  belongs_to :employee
  has_many :jobs, through: :applies
  has_many :applies

  delegate :email, :name, to: :employee

  mount_uploader :attach_pdf, AttachResumeUploader
end
