class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :chores, dependent: :destroy
end
