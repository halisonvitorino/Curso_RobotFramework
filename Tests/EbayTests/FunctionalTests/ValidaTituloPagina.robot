*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
A sample test case
    [documentation]   This test verify a login test
    [tags]  Functional

    Start TestCase
    Verify Text
    Finish TestCase

*** Keywords ***
Start TestCase
    open browser  http://ebay.com  chrome
    maximize browser window
    input text  gh-ac  iphone
    click button  gh-btn
Verify Text
    title should be  iphone | eBay
Finish TestCase
    close browser