class Product
	include Mongoid::Document
	field :title, type: String
	field :description, type: String
	field :price, type: Float
	field :image, type: String
	field :main_image, type: String

	mount_uploader :image, ImageUploader
  mount_uploader :main_image, ImageUploader
  
	validates :title, uniqueness: true, presence: true
	validates :description, :price, :image, :main_image, presence: true
	

end
