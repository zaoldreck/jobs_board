class Job < ActiveRecord::Base
  belongs_to :employer
  has_many :resume, through: :apply
  has_many :applies

  delegate :email, to: :employer

  accepts_nested_attributes_for :resume
end
