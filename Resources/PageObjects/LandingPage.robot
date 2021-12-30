*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CampoBuscar}  gh-ac
${BotaoBuscar}  gh-btn

*** Keywords ***
Valida Texto na Pagina Inicial
    [Arguments]  ${texto_rodape}
    page should contain  ${texto_rodape}

Fill Search Field and Press Search Button
    [Arguments]  ${produto}
    input text  ${CampoBuscar}  ${produto}
    click button  ${BotaoBuscar}

Valida Busca Realizada
    [Arguments]  ${produto}
    page should contain  ${produto}



