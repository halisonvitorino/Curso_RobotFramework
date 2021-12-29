*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Title Text in Search Results Page
    title should be  iphone | eBay
Select Filter State of Product
    click element   xpath=//div[2]/span/button/span/span
    select checkbox  (//input[@type='checkbox'])[102]
Verify Filter State of Product Works
    Element Should Contain  //ul[@id='s0-14-11-6-3-query_answer1-answer-2-1-0-list']/li/div/a/div  Usado

