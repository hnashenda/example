Rails.application.config.middleware.use OmniAuth::Builder do

SCOPE = 'read_products,read_orders,read_customers,write_shipping'

#SHOPIFY_API_KEY = ENV['SHOPIFY_API_KEY']
#SHOPIFY_SHARED_SECRET = ENV['SHOPIFY_SHARED_SECRET']
SHOPIFY_API_KEY="613ab5bbe4133b6c004ec13676f9cbb9"
SHOPIFY_SHARED_SECRET ="64b5df6d0f4c4a183a9fe646cbf0b73f"
  
  
  provider :shopify, SHOPIFY_API_KEY, SHOPIFY_SHARED_SECRET, :scope => SCOPE



end