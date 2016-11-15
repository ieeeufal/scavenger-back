class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Adding locations association through visits model.
  has_many :visits
  has_many :visited_locations, through: :visits, source: 'location'
  
end
