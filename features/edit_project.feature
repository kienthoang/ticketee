Feature: Edit Project
	Edit project

	Background:
		Given the following projects exist:
			| title |
			| Vim   |
		And I am on the home page
		And I follow "Vim"
		And I follow "Edit"

	Scenario: Update project with valid attributes
		When I fill in "Title" with "HAHA"
		And I press "Update Project"
		Then I should be on the project page for "HAHA"
		And I should see "HAHA"
		And I should not see "Vim"
		And I should see "Project has been updated"

	
	Scenario: Update project with invalid attributes
		When I fill in "Title" with ""
		And I press "Update Project"
		Then I should see "Project has not been updated"
		And I should see "Title can't be blank"



		
