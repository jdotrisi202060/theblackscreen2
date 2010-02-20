class Black < ActiveRecord::Base

  belongs_to :user 


  validates_presence_of :user_id
  #@black = :user
  
  require 'paperclip'

  has_attached_file :boxofshit

  validates_attachment_presence :boxofshit
  # belongs_to :black

  #  has_attached_file :boxofshit
  #@onwerid=:userid
  

  attr_accessible :description, :lastaccessed, :boxofshit, :boxofshit_filename
end
