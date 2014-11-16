class User < ActiveRecord::Base
  devise :omniauthable
end
