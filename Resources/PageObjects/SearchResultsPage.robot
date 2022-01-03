*** Settings ***
Library  SeleniumLibrary
Variables  ${EXECDIR}/Resources/WebElements.py

*** Keywords ***
Verify Title Text in Search Results Page
    [Arguments]  ${tituloNaPagina}
    title should be  ${tituloNaPagina}

Select Filter State of Product
    click element  ${SearchResultsPageMenuEstado}
    select checkbox  ${SearchResultsPageMenuEstadoCheckBox_Usado}

Verify Filter State of Product Works
    [Arguments]  ${checkboxSelecionado}
    Element Should Contain  ${SearchResultsPageMenuEstado_Tag_Usado}  ${checkboxSelecionado}

