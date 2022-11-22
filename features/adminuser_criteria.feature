Feature: AdminUser_privilages

Scenario: Delete the Chef
When I visit home page
And I login as a Admin User
Then I should see "Admin"
And I follow "Chefs" 
Then I should see "All Chefs"
And I should see "Delete this chef"

Scenario: Add a new Ingredient
When I login as a Admin user
And I follow "Ingredients" 
Then I should see "New Ingredient" 
When I follow "New Ingredient" 
Then I should see "Enter a new Ingredient"
And I fill in "Name" with "Chilli Sauce"
And I click on "Add Ingredient"
Then I should see "Chilli Sauce"

Scenario: Delete an Ingredient
When I login as a Admin user
And I follow "Ingredients" 
Then I should see "All Ingredient" 
When I follow "All Ingredient" 
Then I should see "Available Ingredient"
And I should see "Chilli Sauce"
Then I follow "Chilli Sauce"
And I should see "Chilli Sauce"
Then I press "Delete this Ingredient"
And I should see "Available Ingredient"

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
Then I should see "Chilli sauce"

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
And I should see "Ingredient_ 1"
Then I follow "Ingredient_ 1"
And I should see "Ingredient_ 1"
Then I press "Delete Ingredient"
And I should see "Available ingredients"