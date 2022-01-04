*** Settings ***
Library  SeleniumLibrary
Variables  ${EXECDIR}/Resources/WebElements.py

*** Keywords ***
Valida Texto na Pagina Inicial
    [Arguments]                  ${texto_rodape}
    page should contain          ${texto_rodape}
    capture element screenshot   ${HomePageTexto_PermancerConectado}

Fill Search Field and Press Search Button
    [Arguments]   ${produto}
    input text    ${HomePageCampoBuscar}  ${produto}
    click button  ${HomePageBotaoBuscar}
    capture page screenshot
    
Valida Busca Realizada
    [Arguments]                 ${produto}
    page should contain         ${produto}
    capture element screenshot  ${HomePageTexto_Motorola}



