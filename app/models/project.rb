class Project < ApplicationRecord
  belongs_to :user
  belongs_to :status
  belongs_to :product
  has_many :tasks
end
