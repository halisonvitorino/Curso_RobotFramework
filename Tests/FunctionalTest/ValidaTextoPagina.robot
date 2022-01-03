*** Settings ***
Documentation  Basic Search Tests
Resource  ${EXECDIR}/Resources/Keywords/CommonKeywords.robot
Resource  ${EXECDIR}/Resources/PageObjects/HomePageEbay.robot
Resource  ${EXECDIR}/Resources/PageObjects/SearchResultsPage.robot

Test Setup  Open WebPage
Test Teardown  Finish TestCase

*** Variables ***
${texto_rodape}  Permanecer conectado
@{produto}       iphone  samsung  motorola  lg

*** Test Case ***
Test Case 1
    [Documentation]   This test verify a text in a page
    [Tags]            Functional

    Valida Texto na Pagina Inicial             ${texto_rodape}
    Fill Search Field and Press Search Button  ${produto[2]}
    Sleep  5s
    Valida Busca Realizada                     ${produto[2]}




