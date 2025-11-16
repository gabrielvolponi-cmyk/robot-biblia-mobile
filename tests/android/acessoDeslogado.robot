*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     acesso_deslogado

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - pre requisitos acesso deslogado
    [Documentation]    Validar pre requisitos primeira tela delogado
    Acessar deslogado
    Validar elementos visiveis
    ...    ${btn_meu_perfil}
    ...    ${btn_historico}
    ...    ${btn_leitura_diaria}
    ...    ${btn_buscar}
    ...    ${btn_configuracoes}
    ...    ${btn_alterar_idioma}
    ...    ${btn_biblia}
    ...    ${btn_pao_nosso}
    ...    ${btn_assinaturas}
    ...    ${btn_avancar}
    ...    ${btn_retroceder}
    ...    ${primeira_tela_deslogado}

Cenario 002 - Acessar meu perfil deslogado
    [Documentation]     Validar acesso a tela meu perfil deslogado
    Acessar deslogado
    Click Element    ${btn_meu_perfil}
    Wait Until Element Is Visible    ${titulo_meu_perfil_deslogado}

Cenario 003 - Acessar Histórico deslogado
    [Documentation]    Validar acesso a tela de histórico deslogado
    Acessar deslogado
    Click Element    ${btn_historico}
    Wait Until Element Is Visible    ${btn_historico_meu_perfil}

Cenario 004 - Acessar Leitura diaria deslogado
    [Documentation]    Validar acesso a tela de leitura diaria deslogado
    Acessar deslogado
    Click Element    ${btn_leitura_diaria}
    Wait Until Element Is Visible    ${titulo_leitura_diaria}

Cenario 005 - Acessar busca deslogado
    [Documentation]    Validar acesso a tela de busca deslogado
    Acessar deslogado
    Click Element    ${btn_buscar}
    Wait Until Element Is Visible    ${titulo_busca_deslogado}

Cenario 006 - Acessar configuracoes deslogado
    [Documentation]    Validar acesso a tela de configuracoes deslogado
    Acessar deslogado
    Click Element    ${btn_configuracoes}
    Wait Until Element Is Visible    ${topbar_config_deslogado}

Cenario 007 - Acessar troca de idioma deslogado
    [Documentation]    Validar acesso a tela de troca de idioma deslogado
    Acessar deslogado
    Click Element    ${btn_alterar_idioma}
    Wait Until Element Is Visible    ${titulo_trocar_idioma}

Cenario 008 - Acessar pao nosso deslogado
    [Documentation]    Validar acesso a tela pao nosso deslogado
    Acessar deslogado
    Click Element    ${btn_pao_nosso}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 009 - Acessar assinaturas deslogado
    [Documentation]    Validar acesso a tela de assinaturas deslogado
    Acessar deslogado
    Click Element    ${btn_assinaturas}
    Wait Until Element Is Visible    ${titulo_assinaturas}

Cenario 010- Acessar biblia deslogado
    [Documentation]    Validar acesso a tela de histórico deslogado
    Acessar deslogado
    Wait Until Element Is Visible    ${primeira_tela_deslogado}



