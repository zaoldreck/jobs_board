class Resume < ActiveRecord::Base
  belongs_to :employee
  delegate :email, :name, to: :employee
  has_many :applies
  has_many :jobs, through: :applies
  mount_uploader :attach_pdf, AttachResumeUploader
end
