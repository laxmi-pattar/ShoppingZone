ActiveAdmin.register Product do


 permit_params :title, :description, :price, :image, :main_image

 config.per_page = [5,10, 50, 100]
 config.filters = false
 config.batch_actions = false


 index do
  column :title
  column :description
  column :price,  sortable: true do |product|
    "$ #{product.price}"
  end
  actions
end

form do |f|
 f.inputs do
 	f.input :title
 	f.input :description
 	f.input :price
 	f.input :image, :as => :file
 	f.input :main_image, :as => :file
end
actions
end

end