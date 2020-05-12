class Inquire < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :msg, presence: true
end
