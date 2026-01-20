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

Cenario 003 - Validar espaco de texto curto
    [Documentation]    Valida o espaçamento pequeno de texto
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${small_space}
    ${selecionado}    Get Element Attribute    ${small_space}    checked
    Should Be Equal    ${selecionado}    true

Cenario 004 - Validar espaco de texto medio
    [Documentation]    Valida o espaçamento medio de texto
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${medium_space}
    ${selecionado}    Get Element Attribute    ${medium_space}    checked
    Should Be Equal    ${selecionado}    true

Cenario 005 - Validar espaco de texto grande
    [Documentation]    Valida o espaçamento grande de texto
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${big_space}
    ${selecionado}    Get Element Attribute    ${big_space}    checked
    Should Be Equal    ${selecionado}    true