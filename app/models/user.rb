class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :email, uniqueness: true
 validates :email, presence: true
 validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "valid email please"

  # Adding locations association through visits model.
  has_many :visits
  has_many :visited_locations, through: :visits, source: 'location'

end
