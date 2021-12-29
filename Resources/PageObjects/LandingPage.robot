*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${texto_rodape}  Permanecer conectado
${texto_busca}  iphone

*** Keywords ***
Valida Texto na Pagina Inicial
    page should contain  ${texto_rodape}
Fill Search Field and Press Search Button
    input text  gh-ac  ${texto_busca}
    click button  gh-btn

