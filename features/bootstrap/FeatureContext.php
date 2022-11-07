<?php

use Behat\Mink\Exception\UnsupportedDriverActionException;
use Drupal\DrupalExtension\Context\MinkContext as MinkExtension;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends MinkExtension
{
  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct()
  {
  }

  /**
   * Visit a given path, and additionally check for HTTP response code 200.
   *
   * @Then I am restricted from :path
   *
   * @throws UnsupportedDriverActionException
   */
  public function assertAccessDeniedAtPath($path)
  {
    $this->getSession()->visit($this->locatePath($path));

    // If available, add extra validation that this is a 200 response.
    try {
      $this->getSession()->getStatusCode();
      $this->assertHttpResponse('403');
    } catch (UnsupportedDriverActionException $e) {
      // Simply continue on, as this driver doesn't support HTTP response codes.
    }
  }
}
