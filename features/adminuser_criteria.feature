Feature: AdminUser_privilages

Background: Admin Login
 When I visit home page
 Then I follow "Log in"
 And I fill in "session_email" with "chef-1@example.com"
 And I fill in "session_password" with "testpassword"
 And I press "Log in"
 Then I should see "Admin"

Scenario: Add a new Ingredient
 When I follow "Ingredients" 
 Then I should see "New Ingredient" 
 When I follow "New Ingredient" 
 Then I should see "Enter a new ingredient"
 And I fill in "ingredient_name" with "Chilli Sauce"
 And I press "Add Ingredient"
 Then I should see "Chilli sauce"

Scenario: Delete an Ingredient
 When I follow "Ingredients" 
 Then I should see "All Ingredients" 
 When I follow "All Ingredients" 
 Then I should see "Available ingredients"
 And I should see "Ingredient_ 1"
 Then I follow "Ingredient_ 1"
 And I should see "Ingredient_ 1"
 Then I should see "Delete Ingredient"

Scenario: Edit an Ingredient
 When I follow "Ingredients" 
 Then I should see "All Ingredients" 
 When I follow "All Ingredients" 
 Then I should see "Available ingredients"
 And I should see "Ingredient_ 1"
 And I should see "Edit this ingredient"
 When I follow "Edit this ingredient"
 Then I should see "Edit ingredient name"
 And I fill in "ingredient_name" with "Edited Ingredient"
 And I press "Update Ingredient"
 Then I should see "Ingredient name was updated successfully"

Scenario: Delete the Chef
 When I follow "Chefs" 
 Then I should see "All chefs"
 And I should see "Delete this chef"