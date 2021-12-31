*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Keywords ***
Valida Texto na Pagina Inicial
    [Arguments]  ${texto_rodape}
    page should contain  ${texto_rodape}

Fill Search Field and Press Search Button
    [Arguments]  ${produto}
    input text  ${HomePageCampoBuscar}  ${produto}
    click button  ${HomePageBotaoBuscar}

Valida Busca Realizada
    [Arguments]  ${produto}
    page should contain  ${produto}



