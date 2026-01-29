*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_assinaturas

Test Setup       Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - Pre requisitos assinatura
    [Documentation]    pre requisitos da tela de assinatura
    Acessar assinatura
    Validar elementos visiveis
    ...    ${header_assinatura}
    ...    ${btn_voltar_assinatura}

Cenario 002 - Validar botao voltar
    [Documentation]    Valida o botão voltar da pagina
    Acessar assinatura
    Click Element    ${btn_voltar_assinatura}
    Wait Until Element Is Visible    ${btn_assinaturas}
    