*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_idioma

Test Setup       Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - Pre requisitos da tela troca de idioma
    [Documentation]    pre requisitos tela de realces
    Acessar troca de idioma
    Validar elementos visiveis
    ...    ${header_alterar_idioma}
    ...    ${btn_voltar_troca_idioma}
    ...    ${select_portugues}
    ...    ${select_ingles}
    ...    ${select_espanhol}
    ...    ${btn_salvar_troca_idioma}
    ...    ${info_biblia}

Cenario 002 - Validar idioma portugues
    [Documentation]    Validar aplicação em portugues
    Acessar troca de idioma
    Click Element    ${select_portugues}
    Click Element    ${btn_salvar_troca_idioma}
    Wait Until Element Is Visible    ${info_biblia_portugues}

Cenario 003 - Validar idioma ingles
    [Documentation]    Validar aplicação em ingles
    Acessar troca de idioma
    Click Element    ${select_ingles}
    Click Element    ${btn_salvar_troca_idioma}
    Wait Until Element Is Visible    ${info_biblia_ingles}

Cenario 004 - Validar idioma espanhol
    [Documentation]    Validar aplicação em espanhol
    Acessar troca de idioma
    Click Element    ${select_espanhol}
    Click Element    ${btn_salvar_troca_idioma}
    Wait Until Element Is Visible    ${info_biblia_espanhol}

Cenario 005 - Validar botao voltar
    [Documentation]    Validar botao voltar na tela de idioma
    Acessar troca de idioma
    Click Element    ${btn_voltar_troca_idioma}
    Wait Until Element Is Visible    ${btn_alterar_idioma_meu_perfil}

