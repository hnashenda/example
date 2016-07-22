class SessionsController < ApplicationController
  def new
  end

  def create
  auth_hash = request.env['omniauth.auth']

  render :text => auth_hash.inspect
    
  @products = ShopifyAPI::Product.all
		import_new_customers
		import_new_products
		update_product_inventory  
    
  end

  def failure
  end

end

