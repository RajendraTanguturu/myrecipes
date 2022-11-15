require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

	def setup
		@chefdetails = Chef.create(chefname: "dilip", email: "dilip@yahoo.com")
		@recipe =@chefdetails.recipes.build(name: "vegetable", description: "great vegetable recipe")
	end

	test "recipe without chef should be invalid" do
  		@recipe.chef_id = nil
 		assert_not @recipe.valid?
	end

	test "recipe should be valid" do
		assert @recipe.valid?
	end

	test "name should be present" do
		@recipe.name = ""
		assert_not @recipe.valid?
	end

	test "description should be present" do
		@recipe.description = ""
		assert_not @recipe.valid?
	end

	test "description should be minimum 5 characters " do
		@recipe.description = "a"*3
		assert_not @recipe.valid?
	end

	test "description should be maximum 500 characters" do
		@recipe.description = "a"*501
		assert_not @recipe.valid?
	end



end
