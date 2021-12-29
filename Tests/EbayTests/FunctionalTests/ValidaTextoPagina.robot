*** Settings ***
Documentation  Basic Search Tests
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/EspecificKeywords.robot

*** Test Cases ***
A sample test case 2
    [documentation]   This test verify a text in a page
    [tags]  Functional

    Given Open WebPage
    And Realize Search
    And Verify Text
    And Select Filter
    Then Verify Filter Works
    Then Finish TestCase


