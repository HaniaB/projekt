class Cathegory < ActiveRecord::Base
  has_many :plant, dependent: :destroy
end
