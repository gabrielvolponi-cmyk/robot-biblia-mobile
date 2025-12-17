*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_destaque

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - Pre requisitos destaque
    [Documentation]    pre requisitos da tela de destaque
    Acessar destaque
    Validar elementos visiveis
    ...    ${header_destaque}
    ...    ${btn_voltar_destaque}
    ...    ${btn_realces}
    ...    ${btn_sublinhados}

Cenario 002 - Validar botao voltar
    [Documentation]    Validar clique do botao
    Acessar destaque
    Click Element    ${btn_voltar_destaque}
    Wait Until Element Is Visible    ${btn_destaques}

Cenario 003 - Validar botao realces
    [Documentation]    Validar clique do botao
    Acessar destaque
    Click Element    ${btn_realces}
    Wait Until Element Is Visible    ${header_realces}

Cenario 004 - Validar botao sublinhados
    [Documentation]    Validar clique do botao
    Acessar destaque
    Click Element    ${btn_sublinhados}
    Wait Until Element Is Visible    ${header_sublinhados}

