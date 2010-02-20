class User < ActiveRecord::Base
  acts_as_authentic

  has_many :blacks
#  attr_accessible :user_id

end
