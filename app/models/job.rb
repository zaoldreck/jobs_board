class Job < ActiveRecord::Base
  accepts_nested_attributes_for :resume
  belongs_to :employer
  delegate :email, to: :employer
  has_many :applies
  has_many :resume, through: :apply
end
