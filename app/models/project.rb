class Project < ActiveRecord::Base
  validates :title, presence: true 

  has_many :tickets,dependent: :destroy
end
