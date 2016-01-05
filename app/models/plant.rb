class Plant < ActiveRecord::Base
    belongs_to :cathegory, dependent: :destroy
    mount_uploader :foto, FotoUploader
    validates :name, presence: true
    
    # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end
