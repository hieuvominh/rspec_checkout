class Rule	
	attr_accessor :product_code, :number, :money, :percent, :minus

	def initialize(product_code , number, money,percent ,minus)
	  @product_code = product_code
	  @percent = percent
	  @number = number
	  @money = money
	  @minus = minus
	end
	
	
	
end
