*** Settings ***
Documentation  Basic Search Tests
Resource  ../../../Resources/Keywords/CommonKeywords.robot
Resource  ../../../Resources/PageObjects/LandingPage.robot
Resource  ../../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  Open WebPage
Test Teardown  Finish TestCase

*** Test Case ***
Test Case 2
    [documentation]   This test verify if a filter works
    [tags]  Functional

    Fill Search Field and Press Search Button
    Select Filter State of Product
    Verify Filter State of Product Works