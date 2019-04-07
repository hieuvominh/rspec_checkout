require_relative '../models/rule'
require_relative '../models/product'
class Checkout	
	attr_accessor :product, :rule

	def initialize(rul)
		@rule=rul
		@product = []
	end
	
	def scan (prod)
		if prod != nil
			@product.push(prod)
		end
	end
	

	
	def total
		checkRule
		total1 = 0
		@product.each do |i|
			total1 += i.price
		end

		@rule.each do |e|
			if e.product_code == 0 && total1>=e.money
				total1 = total1 - ((total1.to_f*e.percent)/100)
			end
		end
		return total1.round(2)
	end
		
	def checkRule
		@rule.each do |e|
			if e.product_code != 0 
				
				temp = 0
				@product.each do |i|
					if i.product_code == e.product_code
						temp+=1
					end
				end
				if temp >= e.number
					@product.each do |i|
						if i.product_code == e.product_code
							i.price = e.minus
						end
					end
				end
			end
		end
	end
end


