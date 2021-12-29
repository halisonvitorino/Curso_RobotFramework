*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Realize Search
    input text  gh-ac  iphone
    click button  gh-btn
Verify Text
    title should be  iphone | eBay
Select Filter
    wait until element is visible  //body[1]/div[5]/div[6]/div[1]/div[1]/div[1]/div[2]/div[2]/span[1]/button[1]/span[1]/span[1]
    click element  //body[1]/div[5]/div[6]/div[1]/div[1]/div[1]/div[2]/div[2]/span[1]/button[1]/span[1]/span[1]
    select checkbox  (//input[@type='checkbox'])[102]
Verify Filter Works
    Element Should Contain  //ul[@id='s0-14-11-6-3-query_answer1-answer-2-1-0-list']/li/div/a/div  Usado