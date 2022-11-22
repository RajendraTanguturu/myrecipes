Feature: NonLoginUser

Scenario: Perform all the action of the Guest User (Not Logged in)
When I visit home page
Then I follow "Chefs"
And I should see "All Chefs"
Then I follow "Chef-0"
Then I should see"Chef chef-0's profile"


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
