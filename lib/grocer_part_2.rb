require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    # binding.pry
    if cart.include? coupon[:item]
    item_name = coupon[:item]
    if cart[item_name][:count] >= coupon[:num]
      coupon_name = "#{coupon[]} W/COUPON"
      if cart[coupon_name]
        cart[coupon_name][:count] += coupon[:num] 
      else 
        cart[coupon_name] = {
          :price => coupon[:cost] / coupon[:num],
          :clearance => cart[item_name][:clearance] ,
          :count => coupon[:num]
        }
      end 
      cart[item_name][:count] -= coupon[:num]
    end
  end
end
  cart 
end











#create a variable and assign it to find_item_by_name_in_collection, with parameter of coupon (we want to see if an item in our coupn exist)
def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
