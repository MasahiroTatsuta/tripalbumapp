class Search < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :name, presence: true
end
