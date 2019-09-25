class Product
	include Mongoid::Document
	
	belongs_to :admin_user

	field :title, type: String
	field :description, type: String
	field :price, type: Float
	field :image, type: String
	field :main_image, type: String
	field :admin_user_id, type: Integer

	mount_uploader :image, ImageUploader
	mount_uploader :main_image, ImageUploader

	validates :title, uniqueness: true, presence: true
	validates :description, :price, presence: true
	validates :price, numericality: { greater_than: 0, less_than: 1000000 }

	before_validation :method3
	before_create :set_admin_user_id
	after_create :set_method1
	after_save :set_method2

	private

	def set_admin_user_id
		puts 'admin_user_id initialised before_create'
	end

	def set_method1
		puts 'inside after_create method1'
	end

	def set_method2
		puts 'inside after_save method2'
	end

	def method3
		puts "before validation"
	end
	
end
