class Micropost < ActiveRecord::Base
  belongs_to :user

  validates :contest, :length => { :maximum => 140 }
end
