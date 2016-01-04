class Plant < ActiveRecord::Base
    belongs_to :cathegory, dependent: :destroy
    mount_uploader :foto, FotoUploader
    validates :name, presence: true
end
