Feature: Progress Formatter

  In order to tell if the lint tool is working
  As a developer
  I want to be able to see the current progress

  Scenario: See progress on a cookbook with style problems
    Given a cookbook that has style problems
     When I check the cookbook with progress output
     Then failure progress marks should be displayed
      And success progress marks should be displayed

  Scenario: See progress on a cookbook with no problems
    Given a cookbook that has no problems
     When I check the cookbook with progress output
     Then failure progress marks should not be displayed
      And success progress marks should be displayed
