Rails.application.config.middleware.use OmniAuth::Builder do

SCOPE = 'read_products,read_orders,read_customers,write_shipping'

#SHOPIFY_API_KEY = ENV['SHOPIFY_API_KEY']
#SHOPIFY_SHARED_SECRET = ENV['SHOPIFY_SHARED_SECRET']
SHOPIFY_API_KEY="b938422575abaef925657713d2f54453"
SHOPIFY_SHARED_SECRET ="6d5fc6f01c0d68ed6d5fb9c80e701315"


  provider :shopify, SHOPIFY_API_KEY, SHOPIFY_SHARED_SECRET, :scope => SCOPE



end