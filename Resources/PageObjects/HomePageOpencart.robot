*** Settings ***
Library  SeleniumLibrary
Resource  ${EXECDIR}/Resources/Keywords/CommonKeywords.robot
Variables  ${EXECDIR}/Resources/WebElements.py

*** Keywords ***
Acessa a Pagina de Login
    click link  ${LinkLogin}

Preeenche com Usuario e Senha Validos e Aciona Logar
    input text    ${FieldEmail}  ${usuarioValidoOpencart}
    input text    ${FieldPassword}  ${senhaValidaOpencart}
    click button  ${ButtonLogin}

Preeenche com Usuario Invalido e Aciona Logar
    input text    ${FieldEmail}  ${usuarioInvalidoOpencart}
    input text    ${FieldPassword}  ${senhaValidaOpencart}
    click button  ${ButtonLogin}

Valida Login Failed
    page should contain  No match for E-Mail and/or Password

Valida Pagina de Boas Vindas
    page should contain  PIN Security Check