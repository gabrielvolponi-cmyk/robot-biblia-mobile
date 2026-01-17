*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     configuracoes

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - Pre requisitos tela de configuracoes
    [Documentation]    Validar pre requisitos da tela de configuracoes 
    Acessar configuracoes
    Validar elementos visiveis
    ...    ${btn_brilho}
    ...    ${btn_fonte}
    ...    ${btn_tema}

Cenario 002 - Validar barra de brilho
    [Documentation]    Valida se a barra de brilho da tela esta funcionando
    Acessar configuracoes
    Click Element    ${btn_brilho}
    ${valor_inicial}    Obter valor do brilho     ${barra_brilho}
    Mover Slider De Brilho    ${barra_brilho}
    ${valor_final}    Obter valor do brilho    ${barra_brilho}   
    Should Not Be Equal As Numbers    ${valor_inicial}    ${valor_final}
