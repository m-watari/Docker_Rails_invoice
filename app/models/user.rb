class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :groups, through: :groups_users
  has_many :group_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
