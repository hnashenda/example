Rails.application.config.middleware.use OmniAuth::Builder do


  provider :shopify, "613ab5bbe4133b6c004ec13676f9cbb9", "64b5df6d0f4c4a183a9fe646cbf0b73f", :scope => 'read_products,read_orders,read_customers,write_shipping'



end