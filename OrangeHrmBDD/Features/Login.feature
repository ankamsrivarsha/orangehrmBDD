Feature: Login

In order to maintain employee records
AS A ADMIN
I want to access the portal

@tag1
Scenario: Valid Credential
	Given I have browser with orangehrm application
	When I enter username as 'Admin'
	And I enter password as 'admin123'
	And I click on login
	Then I should get access to portal with url as 'https://opensource-demo.orangehrmlive.com/index.php/dashboard'
Scenario: Invalid Credentials
    Given I have browser with orangehrm application
	When I enter username as 'jhon'
	And I enter username as 'jhon123'
	And I click on login
	Then I should message as 'Invalid Credentials'