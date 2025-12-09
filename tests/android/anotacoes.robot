*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_anotacoes

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - Pre requisitos suite_anotacoes
    [Documentation]    Validar pre requisitos da tela de anotacoes 
    Acessar anotacoes
    Validar elementos visiveis
    ...    ${titulo_anotacoes}
    ...    ${btn_texto_biblico}
    ...    ${btn_comentarios}
    ...    ${btn_ver_tudo}
    ...    ${btn_pai_nosso}
    ...    ${btn_coracao}
    ...    ${btn_anjo}
    ...    ${btn_cruz}
    ...    ${btn_biblia_anotacoes}
    ...    ${btn_voltar_anotacoes} 

Cenario 002 - Validar texto biblico
    [Documentation]    Validar botao texto biblico
    Acessar anotacoes
    Click Element    ${btn_texto_biblico}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 003 - Validar comentários
    [Documentation]    Validar botao comentarios
    Acessar anotacoes
    Click Element    ${btn_comentarios}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 004 - Validar Ver tudo
    [Documentation]    Validar botao ver tudo
    Acessar anotacoes
    Click Element    ${btn_ver_tudo}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 005 - Validar pai nosso
    [Documentation]    Validar botao pai nosso
    Acessar anotacoes
    Click Element    ${btn_pai_nosso}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 006 - Validar coracao
    [Documentation]    Validar botao coracao
    Acessar anotacoes
    Click Element    ${btn_coracao}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 007 - Validar anjo
    [Documentation]    Validar botao anjo
    Acessar anotacoes
    Click Element    ${btn_anjo}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 008 - Validar cruz
    [Documentation]    Validar botao cruz
    Acessar anotacoes
    Click Element    ${btn_cruz}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 009 - Validar biblia
    [Documentation]    Validar botao biblia
    Acessar anotacoes
    Click Element    ${btn_biblia_anotacoes}
    Wait Until Element Is Visible    ${nenhuma_anotacao_encontrada}

Cenario 010 - Validar voltar
    [Documentation]    Validar botao voltar
    Acessar anotacoes
    Click Element    ${btn_voltar_anotacoes}
    Wait Until Element Is Visible    ${btn_anotacoes}
