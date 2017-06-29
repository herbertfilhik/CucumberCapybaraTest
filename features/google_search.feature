Feature: Google search

Scenario: Search for Agile Manifesto
	Given I open Google
	When I searc "agile manifesto"
	Then I should see a link to "agilemanifesto.org"