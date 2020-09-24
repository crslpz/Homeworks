require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cupcake) {Dessert.new("cake",50, "chris")}
  describe "#initialize" do
    it "sets a type" do
      expect(cupcake.type).to eq("cake")
    end
    it "sets a quantity" do 
      expect(cupcake.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do 
      expect(cupcake.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("cupcake","tons","chris")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cupcake.add_ingredient("frosting")
      expect(cupcakes.ingredients).to include("frosting")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["flour","sugar", "frosting"]

      ingredients.each do |ingredient|
        cupcake.add_ingredient(ingredient)
      end
      expect(cupcake.ingredients).to eq(ingredients)
      
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
