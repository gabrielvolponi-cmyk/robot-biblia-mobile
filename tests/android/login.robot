*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_login

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo
Library    XML

*** Test Cases ***
Cenario 001 - Acessar tela de suite_login
    [Documentation]    Validar acesso a tela de suite_login
    Click Element    ${btn_entrar}
    Element Should Be Visible   ${scroll_view_login}

Cenario 002 - Login com credenciais válidas
    [Documentation]    Validar login com credenciais válidas
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Input Text    ${input_email}   ${email_biblia_robot}
    Input Text    ${input_senha}    ${senha_biblia_robot}
    Click Element    ${btn_logar}
    Sleep    3s
