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

Cenario 003 - Login com email invalido
    [Documentation]    Validar login com usuario inexistente
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Input Text    ${input_email}   ${email_biblia_invalido_robot}
    Input Text    ${input_senha}    ${senha_biblia_robot}
    Click Element    ${btn_logar}
    Wait Until Page Contains Element    ${toast_erro_login}    2s

Cenario 004 - Login com senha invalida
    [Documentation]    Validar login com senha invalida
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Input Text    ${input_email}   ${email_biblia_invalido_robot}
    Input Text    ${input_senha}    ${senha_biblia_invalida_robot}
    Click Element    ${btn_logar}
    Wait Until Page Contains Element    ${toast_erro_login}    2s

Cenario 005 - Login com email null
    [Documentation]    Validar login com usuario nulo
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Input Text    ${input_senha}    ${senha_biblia_robot}
    Click Element    ${btn_logar}
    Wait Until Page Contains Element    ${toast_usuario_null}    2s

Cenario 006 - Login com senha null
    [Documentation]    Validar login com senha nula
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Input Text    ${input_email}    ${email_biblia_robot}
    Click Element    ${btn_logar}
    Wait Until Page Contains Element    ${toast_senha_null}    2s

Cenario 007 - Login com credenciais null
    [Documentation]    Validar login com credenciais nulas
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_logar}
    Wait Until Page Contains Element    ${toast_usuario_null}    2s

Cenario 008 - Validar mostrar a senha

Cenario 009 - Validar esconder a senha

