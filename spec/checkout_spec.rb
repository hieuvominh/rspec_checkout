require_relative '../models/checkout'  
require_relative '../models/rule'
require_relative '../models/product'
describe Checkout do
  describe "Test case 1" do
    before(:each) do
		@arr = []
		rule1 = Rule.new(0,0,60,10,0)

		@arr.push(rule1)

		@item1 = Product.new(001,"Lavender heart",9.25)
		@item2 = Product.new(002,"Personalised cufflinks",45.00)
		@item3 = Product.new(002,"Kids T-shirt",19.95)

		@co = Checkout.new(@arr)

		@co.scan(@item1)
		@co.scan(@item2)
		@co.scan(@item3)

		@price = @co.total

    end
	
	it "item1 name should equal Lavender heart" do
      expect(@item1.name).to eq("Lavender heart")
    end
	
	it "item2 name should equal Personalised cufflinks" do
      expect(@item2.name).to eq("Personalised cufflinks")
    end
	
	it "item3 name should equal Kids T-shirt" do
      expect(@item3.name).to eq("Kids T-shirt")
    end

    it "should create a new instance of class Check out" do
      expect(@co).to be_a(Checkout)
    end

    it "should have a rule" do
      expect(@co.rule).to_not be_nil
    end

    it "should equal 66.78" do
      expect(@price).to eq(66.78)
    end
  end
  
  describe "Test case 2" do
    before(:each) do
		@arr = []
		rule1 = Rule.new(001,2,0,0,8.50)

		@arr.push(rule1)

		@item1 = Product.new(001,"Lavender heart",9.25)
		@item2 = Product.new(002,"Kids T-shirt",19.95)

		@co = Checkout.new(@arr)

		@co.scan(@item1)
		@co.scan(@item2)
		@co.scan(@item1)
		
		@price = @co.total

    end
	it "item1 name should equal Lavender heart" do
      expect(@item1.name).to eq("Lavender heart")
    end
	
	it "item2 name should equal Personalised cufflinks" do
      expect(@item2.name).to eq("Kids T-shirt")
    end

    it "should create a new instance of class Check out" do
      expect(@co).to be_a(Checkout)
    end

    it "should have a rule" do
      expect(@co.rule).to_not be_nil
    end

    it "should equal 36.95" do
      expect(@price).to eq(36.95)
    end
  end
  
  describe "Test case 3" do
    before(:each) do
		@arr = []
		rule1 = Rule.new(0,0,60,10,0)
		rule2 = Rule.new(001,2,0,0,8.5)
		
		@arr.push(rule1)
		@arr.push(rule2)

		@item1 = Product.new(001,"Lavender heart",9.25)
		@item2 = Product.new(002,"Personalised cufflinks",45.00)
		@item3 = Product.new(002,"Kids T-shirt",19.95)

		@co = Checkout.new(@arr)

		@co.scan(@item1)
		@co.scan(@item2)
		@co.scan(@item1)
		@co.scan(@item3)
		
		@price = @co.total

    end
		it "item1 name should equal Lavender heart" do
      expect(@item1.name).to eq("Lavender heart")
    end
	
	it "item2 name should equal Personalised cufflinks" do
      expect(@item2.name).to eq("Personalised cufflinks")
    end
	
	it "item3 name should equal Kids T-shirt" do
      expect(@item3.name).to eq("Kids T-shirt")
    end

    it "should create a new instance of class Check out" do
      expect(@co).to be_a(Checkout)
    end

    it "should have a rule" do
      expect(@co.rule).to_not be_nil
    end

    it "should equal 73.76" do
      expect(@price).to eq(73.76)
    end
  end
end
