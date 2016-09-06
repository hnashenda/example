class SessionsController < ApplicationController
  def new
  end

  def create
  auth_hash = request.env['omniauth.auth']
   @shop_session = request.env['omniauth.auth'].uid
    @token = request.env['omniauth.auth']['credentials']['token']
    @session =ShopifyAPI::Session.new(@shop_session, @token)
    ShopifyAPI::Base.activate_session(@session)
    @shop = ShopifyAPI::Shop.current
    @checkout = ShopifyAPI::Checkout.all
    @checkout_normal = ShopifyAPI::Checkout
    @checkout_count = ShopifyAPI::Checkout.count
    @product = ShopifyAPI::Product.all

    new_product = ShopifyAPI::Product.new
    new_product.title = "Burton Custom Freestlye 151"
    new_product.product_type = "Snowboard"
    new_product.vendor = "Burton"
    
    new_product.metafields = [
  {
    "key" => "item_size",
    "value" => '125gr',
    "value_type" => "string",
    "namespace" => "global"
  }
]


  #render :text => auth_hash.inspect



  end

  def failure
  end

end

