class Device < ActiveRecord::Base
  belongs_to :user
  has_many :infrareds
end
