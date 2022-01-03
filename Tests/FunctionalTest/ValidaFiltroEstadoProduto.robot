*** Settings ***
Documentation  Basic Search Tests
Resource  ${EXECDIR}/Resources/Keywords/CommonKeywords.robot
Resource  ${EXECDIR}/Resources/PageObjects/HomePageEbay.robot
Resource  ${EXECDIR}/Resources/PageObjects/SearchResultsPage.robot

Test Setup  Open WebPage
Test Teardown  Finish TestCase

*** Variables ***
@{produto}  iphone  samsung  motorola  lg
${tituloNaPagina}  motorola | eBay
${checkbox_usado}  Usado

*** Test Case ***
Test Case 2
    [documentation]   This test verify if a filter works
    [tags]  Functional Test

    Fill Search Field and Press Search Button  ${produto[2]}
    Verify Title Text in Search Results Page  ${tituloNaPagina}
    Select Filter State of Product
    Verify Filter State of Product Works  ${checkbox_usado}