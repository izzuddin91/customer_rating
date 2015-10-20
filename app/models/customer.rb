class Customer < ActiveRecord::Base
  has_many :comments
end
