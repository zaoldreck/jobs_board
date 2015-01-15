class Job < ActiveRecord::Base
  belongs_to :employer
  delegate :email, to: :employer
end
