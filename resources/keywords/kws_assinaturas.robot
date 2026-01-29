*** Settings ***

Resource    ../configs/package.resource

Documentation    Testes do fluxo da tela de assinaturas

*** Keywords ***

Acessar assinatura
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Input Text       ${input_email}    ${user_biblia}
    Input Text       ${input_senha}    ${senha_user_biblia}
    Click Element    ${btn_logar}
    Wait Until Element Is Visible    ${btn_assinaturas}
    Click Element    ${btn_assinaturas}