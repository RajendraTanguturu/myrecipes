Feature: Nonloggeduser

Scenario: NonloggedUserActions
When I visit home page
Then I follow "Log in"
And I fill in "session_email" with "chef-1@example.com"
And I fill in "session_password" with "testpassword"
And I press "Log in"
Then I should see "Admin"

Scenario: Add a new Ingredient
When I visit home page
Then I follow "Log in"
And I fill in "session_email" with "chef-1@example.com"
And I fill in "session_password" with "testpassword"
And I press "Log in"
And I follow "Ingredients" 
Then I should see "New Ingredient" 
When I follow "New Ingredient" 
Then I should see "Enter a new ingredient"
And I fill in "ingredient_name" with "Chilli Sauce"
And I press "Add Ingredient"
Then I should see "Chilli Sauce"

Scenario: Delete an Ingredient
When I visit home page
Then I follow "Log in"
And I fill in "session_email" with "chef-1@example.com"
And I fill in "session_password" with "testpassword"
And I press "Log in"
And I follow "Ingredients" 
Then I should see "All Ingredient" 
When I follow "All Ingredient" 
Then I should see "Available ingredients"
And I should see "ingredient-1"
Then I follow "ingredient-1"
And I should see "ingredient-1"
Then I press "Delete this Ingredient"
And I should see "Available ingredients"