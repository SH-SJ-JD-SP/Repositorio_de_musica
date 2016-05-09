class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :tuning
  belongs_to :user
  
  #Hace una búsqueda por los atributos de las canciones
  def self.search (search_term)
  	return scoped unless search_term.present? 
  	where(['titulo LIKE ? or autor LIKE ? or album LIKE ?', "%#{search_term}%","%#{search_term}%","%#{search_term}%"])
  end
end
