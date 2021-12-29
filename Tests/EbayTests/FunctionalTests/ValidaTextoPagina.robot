*** Settings ***
Documentation  Basic Search Tests
Resource  ../../../Resources/Keywords/CommonKeywords.robot
Resource  ../../../Resources/PageObjects/LandingPage.robot
Resource  ../../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  Open WebPage
Test Teardown  Finish TestCase

*** Test Case ***
Test Case 1
    [documentation]   This test verify a text in a page
    [tags]  Functional

    Valida Texto na Pagina Inicial
    Fill Search Field and Press Search Button
    Verify Title Text in Search Results Page




