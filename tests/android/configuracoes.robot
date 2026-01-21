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

Cenario 002 - Validar barra de sObter valor do slider
    [Documentation]    Valida se a barra de sObter valor do slider da tela esta funcionando
    Acessar configuracoes
    Click Element    ${btn_brilho}
    ${valor_inicial}    Obter valor do slider     ${barra_brilho}
    Mover Slider    ${barra_brilho}
    ${valor_final}    Obter valor do slider    ${barra_brilho}   
    Should Not Be Equal As Numbers    ${valor_inicial}    ${valor_final}

Cenario 003 - Validar espaco de texto curto
    [Documentation]    Valida o espaçamento pequeno de texto
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${small_space}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${small_space}    checked
    Should Be Equal    ${selecionado}    true

Cenario 004 - Validar espaco de texto medio
    [Documentation]    Valida o espaçamento medio de texto
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${medium_space}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${medium_space}    checked
    Should Be Equal    ${selecionado}    true

Cenario 005 - Validar espaco de texto grande
    [Documentation]    Valida o espaçamento grande de texto
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${big_space}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${big_space}    checked
    Should Be Equal    ${selecionado}    true

Cenario 006 - Validar alinhamento a esquerda
    [Documentation]    Valida o alinhamento do texto a esquerda
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${alinhamento_esquerda}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${alinhamento_esquerda}    checked
    Should Be Equal    ${selecionado}    true    
Cenario 007 - Validar alinhamento centralizado
    [Documentation]    Valida o alinhamento do texto centralizado
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${alinhamento_centralizado}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${alinhamento_centralizado}    checked
    Should Be Equal    ${selecionado}    true 

Cenario 008 - Validar alinhamento a direita
    [Documentation]    Valida o alinhamento do texto a direita
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Click Element    ${alinhamento_direita}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${alinhamento_direita}    checked
    Should Be Equal    ${selecionado}    true 

Cenario 009 - Validar estilo Normal
    [Documentation]    Valida estilo do texto normal
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    Condicional elemento selecionado    ${estilo_normal} 
    ${selecionado}    appiumlibrary.Get Element Attribute    ${estilo_normal}    checked
    Should Be Equal    ${selecionado}    true

Cenario 010 - Validar estilo Negrito
    [Documentation]    Valida estilo do texto negrito
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}   
    Condicional elemento selecionado    ${estilo_negrito}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${estilo_negrito}    checked
    Should Be Equal    ${selecionado}    true

Cenario 011 - Validar estilo italico
    [Documentation]    Valida estilo do texto italico
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}   
    Condicional elemento selecionado    ${estilo_italico}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${estilo_italico}    checked
    Should Be Equal    ${selecionado}    true

Cenario 012 - Validar estilo italico e negrito
    [Documentation]    Valida estilo do texto italico e negrito
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}   
    Condicional elemento selecionado    ${estilo_italico}
    Condicional elemento selecionado    ${estilo_negrito}
    ${selecionado}    appiumlibrary.Get Element Attribute    ${estilo_italico}    checked
    Should Be Equal    ${selecionado}    true
    ${selecionado}    appiumlibrary.Get Element Attribute    ${estilo_negrito}    checked
    Should Be Equal    ${selecionado}    true

Cenario 013 - Validar barra de tamanho
    [Documentation]    Valida se a barra de tamanho da fonte esta funcionando
    Acessar configuracoes
    Click Element    ${btn_fonte}
    Click Element    ${formato_texto}
    ${valor_inicial}    Obter valor do slider     ${barra_tamanho}
    Mover Slider    ${barra_tamanho}
    ${valor_final}    Obter valor do slider    ${barra_tamanho}   
    Should Not Be Equal As Numbers    ${valor_inicial}    ${valor_final}

