class Device < ActiveRecord::Base
  belongs_to :user
  has_many :infrareds, ->{ order(:name) }, dependent: :destroy
end
