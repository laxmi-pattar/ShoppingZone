class Product
	include Mongoid::Document
	
	# belongs_to :admin_user

	field :title, type: String
	field :description, type: String
	field :price, type: Float
	field :image, type: String
	field :main_image, type: String
	field :admin_user_id, type: Integer

	mount_uploader :image, ImageUploader
	mount_uploader :main_image, ImageUploader

	validates :title, uniqueness: true, presence: true
	validates :description, presence: true
	#validates :image, presence: true
	#validates :main_image, presence: true
	validates_numericality_of :price, :greater_than => 0, :less_than => 1000000 
	validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/

	before_validation :before_validation
	after_validation :after_validation

	before_create :set_admin_user_id
	after_create :after_create

	after_destroy :set_destroy_action_after
	before_destroy :set_destroy_action_before

	after_update :set_update_action_before

	private

	def set_admin_user_id
		puts 'inside set_admin_user_id before create'
	end

	def after_create
		puts 'inside after_create method1'
	end

	def before_validation
		puts "before validation"
	end

	def after_validation
		if self.errors.any?
			puts 'title already taken'
		else
			puts "No errors after validation"
		end
	end

	def set_destroy_action_after
		puts "#{self.id} destroyed"
	end

	def set_destroy_action_before
		puts "before destroying"
	end

	def set_update_action_before
		puts 'updated products'  if title_changed?
	end
end
