class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true

  has_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
