@search
Feature: Search Results
  In order to find documents
  As a user
  I want to enter terms, select fields, and select number of results per page
  
    Scenario: Empty query
      Given I am on the catalog page
      When I fill in the search box with ""
      And I press "search"
      Then I should get at least 30 results
      And I should get id "00282214" in the results

    Scenario: "inmul" query
      Given I am on the catalog page
      When I fill in the search box with "inmul"
      And I press "search"
      Then I should get exactly 1 result
      And I should get id "77826928" in the results
      And I should not get id "00282214" in the results

    Scenario: case-insensitive
      Given I am on the catalog page
      When I fill in the search box with "inmul"
      And I press "search"
      Then I should have the same number of results as a search for "INMUL"

    Scenario: Relevancy ordering
        Given I am on the catalog page
        When I fill in the search box with "Korea"
        And I press "search"
        Then I should get id "77826928" in the first 5 results
        And I should get id "77826928" before id "94120425"
        And I should get id "77826928" and id "94120425" within 5 positions of each other


        
