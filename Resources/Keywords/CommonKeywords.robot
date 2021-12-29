*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open WebPage
    open browser  http://ebay.com  chrome
    maximize browser window
Finish TestCase
    close browser