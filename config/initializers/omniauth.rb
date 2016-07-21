Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shopify, ENV['3a767680d445822e32785eb41b191476'], ENV['e432c2446a6ad93efe45a3612a67fa5c-1469118110'], :scope => 'read_products,read_orders,write_content'
end