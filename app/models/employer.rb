class Employer < User
  has_many :jobs , dependent: :destroy
end
