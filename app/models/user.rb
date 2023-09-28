class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :houses, dependent: :destroy
  has_many :feeds, dependent: :destroy

  enum :role, {user:0,moderator:1,admin:2}

  def self.ransackable_attributes(auth_object = nil)
    ["name"]
  end
end
