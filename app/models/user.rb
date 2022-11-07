class User < ApplicationRecord

  has_many :recipe
  has_many :foods

end
