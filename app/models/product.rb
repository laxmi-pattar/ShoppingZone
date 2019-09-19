class Product
	include Mongoid::Document
	field :title, type: String
	field :description, type: String
	field :price, type: Float
	field :image, type: String

	mount_uploader :image, ImageUploader

	validates :title, uniqueness: true, presence: true
	validates :description, :price, :image, presence: true
	

end