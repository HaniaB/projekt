class Plant < ActiveRecord::Base
    belongs_to :cathegory, dependent: :destroy
    validates :name, presence: true
end
