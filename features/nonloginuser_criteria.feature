Feature: NonLoginUser

Scenario: Perform all the action of the Guest User (Not Logged in)
When I visit home page
Then I follow "Chefs"
And I should see "All chefs"
Then I follow "Chef 0"
Then I should see "Chef chef 0's profile"
Then I should see "Chef 0's recipes"
When I follow "All Recipes"
Then I should see "Recipes available"
And I follow "recipe_ 1"
Then I should see "Back to Recipes List"
And I should not see "Edit this recipe"
And I should not see "Delete this recipe"
And I follow "Back to Recipes List"
Then I should see "Recipes available"
When I follow "Ingredients"
Then I should see "All Ingredients"
Then I should not see "New Ingredient"
When I follow "All Ingredients"
Then I should see "Available ingredients"
Then I should not see "Edit this Recipe"
When I follow "Ingredient_ 1"
Then I should see "Ingredient_ 1"
Then I should not see "Delete Ingredient"