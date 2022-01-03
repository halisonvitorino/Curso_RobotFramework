*** Settings ***
Documentation  Testes da Funcao Login
Resource  ${EXECDIR}/Resources/Keywords/CommonKeywords.robot
Resource  ${EXECDIR}/Resources/PageObjects/HomePageOpencart.robot
Test Setup  Open WebPage
Test Teardown  Finish TestCase

*** Variables ***

*** Test Case ***
Test Case 1
  [Documentation]  Teste Login Valido
  [Tags]  Functional
  Acessa a Pagina de Login
  Preeenche com Usuario e Senha Validos e Aciona Logar
  Valida Pagina de Boas Vindas

Test Case 2
  [Documentation]  Teste Login Invalido
  [Tags]  Functional
  Acessa a Pagina de Login
  Preeenche com Usuario Invalido e Aciona Logar
  Valida Login Failed