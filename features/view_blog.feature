Feature: View empty blog
  To allow a user to start a new blog
  A regular user of the system
  Must be able to view a blank blog

  Scenario: Blog with no posts
    Given a blog with no posts
    When I go to /
    Then I should see "No posts yet"
