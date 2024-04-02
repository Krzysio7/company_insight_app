Feature: Companies

    Background:
        Given the app is running

    Scenario: App just opened
        Given the I have not added any companies
        Then I can see engaging instructions about what I should do

    Scenario: Favorite add
        When I enter a valid company symbol {'AUU'}
        Then I am presented with a preview of the company {'AUU'}
        And I can choose to add the company {'AUU'} to my list

    Scenario: No result display
        Given I have entered an invalid or nonexistent company symbol
        Then I am shown a message indicating that the company profile could not be found