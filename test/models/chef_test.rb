require 'test_helper'

  class ChefTest < ActiveSupport::TestCase
    def setup
    @chefdetails =Chef.new(chefname: "teja", email: "teja@example.com",
                           password: "password", password_confirmation: "password")
    end

  test "chefname should be valid" do
    assert @chefdetails.valid?
  end

  test "chefname should be present" do
    @chefdetails.chefname = ""
    assert_not @chefdetails.valid?
  end

  test "email should be present" do
    @chefdetails.email = ""
    assert_not @chefdetails.valid?
  end

  test "chefname should be maximum 30 characters" do
    @chefdetails.chefname = "a"*31
    assert_not @chefdetails.valid?
  end

  test "email should not be too long (!>255) " do
    @chefdetails.email = "a"*256
    assert_not @chefdetails.valid?
  end

  test "ensure the email address is in valid format" do 
    valid_emails = %w[teja@example.com demoapp@gmail.com mahrur@yahoo.com johm+smith@co.in.org]
    valid_emails.each do |valids|
      @chefdetails.email = valids 
      assert @chefdetails.valid?, "#{valids.inspect} should be valid"
    end
  end

  test "should reject invalid addresses" do
      invalid_emails = %w[teja@example teja@example,com teja.name@gmail. johnn@bar+foo.com]
      invalid_emails.each do |invalids|
          @chefdetails.email = invalids
          assert_not @chefdetails.valid?, "#{invalids.inspect} should be invalid"
      end
    end 

  test "email should be unique and case insensitive" do
    duplicate_chefdetails = @chefdetails.dup
    duplicate_chefdetails.email = @chefdetails.email.upcase
    @chefdetails.save
    assert_not duplicate_chefdetails.valid?
  end

  test "email should be lower case before hitting db" do
    mixed_email = "JohN@ExampLe.com"
    @chefdetails.email = mixed_email
    @chefdetails.save
    assert_equal mixed_email.downcase, @chefdetails.reload.email 
  end

  test "password should be present" do
    @chefdetails.password = @chefdetails.password_confirmation = " "
    assert_not @chefdetails.valid?
  end
  
  test "password should be atleast 5 character" do
    @chefdetails.password = @chefdetails.password_confirmation = "x" * 4
    assert_not @chefdetails.valid?
  end

  test "associated recipes should be destroyed" do
    @chefdetails.save
    @chefdetails.recipes.create!(name: "testing destroy", description: "testing destroy function") 
    assert_difference 'Recipe.count', -1 do
      @chefdetails.destroy
    end
  end

end