Feature: NonLoginUser


Scenario: NonloggedUserActions
When I visit home page
Then I follow "View all recipes as a Guest!"
Then I should see "All recipes"
Then I follow "The Food Corner"
Then I should see "Sign up"
Then I follow "View Chefs listing"
Then I should see "Showing all chefs"
Then I follow "The Food Corner"
Then I should see "Sign up"
Then I follow "View ingredients listing"
Then I should see "Available ingredients"
Then I follow "The Food Corner"
Then I should see "Sign up"
