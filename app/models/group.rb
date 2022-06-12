class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :invoices

  validates :name, presence: true
  validates :introduction, presence: true
  # attachment :image, destroy: false
end