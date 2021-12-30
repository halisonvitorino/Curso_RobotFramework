*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://ebay.com

*** Keywords ***
Open WebPage
    open browser  ${url}  ${browser}
    maximize browser window

Finish TestCase
    close browser