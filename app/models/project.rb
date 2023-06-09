class Project < ApplicationRecord
  belongs_to :user
  belongs_to :status
  belongs_to :product
end
