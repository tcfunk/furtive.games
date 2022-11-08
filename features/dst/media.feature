@api
Feature: Media
  In order to present media appropriately
  As a site owner
  I want to have image styles for various contexts.

  Scenario: Image styles
    Then exactly the following image styles should exist
      | Style name | Machine name |
      | Large (480×480) | large |
      | Medium (220×220) | medium |
      | Thumbnail (100×100) | thumbnail |
      | Wide (1090) | wide |
