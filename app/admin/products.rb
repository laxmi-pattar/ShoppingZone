ActiveAdmin.register Product do


 permit_params :title, :description, :price


 index do
  column :title
  column :description
  column :price,  sortable: true do |product|
    "$ #{product.price}"
  end
  actions
end

end
