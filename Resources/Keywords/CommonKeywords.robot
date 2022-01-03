*** Settings ***
Documentation  Arquivo com keywords e variaveis que podem ser reutilizadas em todos os testes
Library  SeleniumLibrary

*** Variables ***
${browserChrome}  chrome
${urlEbay}  http://ebay.com
${urlOpencart}  https://www.opencart.com
${usuarioValidoOpencart}  halisonvitorino@gmail.com
${usuarioInvalidoOpencart}  1234567
${senhaValidaOpencart}  12345678

*** Keywords ***
Open WebPage
    open browser  ${urlEbay}  ${browserChrome}
    maximize browser window

Finish TestCase
    close browser