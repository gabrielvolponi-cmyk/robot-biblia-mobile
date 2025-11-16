*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     meu_perfil

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - pre requisitos meu perfil
    [Documentation]    Validar tela do meu perfil
    Acessar meu perfil
    Validar elementos visiveis
    ...    ${btn_marcacoes}
    ...    ${btn_anotacoes}
    ...    ${btn_destaques}
    ...    ${btn_historico_meu_perfil}
    ...    ${btn_minha_assinatura}
    ...    ${btn_alterar_idioma_meu_perfil}
    ...    ${btn_gift_code}
    ...    ${btn_voucher}
    ...    ${btn_voltar_meu_perfil_deslogado}
    ...    ${btn_atualizar_meu_perfil_deslogado}
    ...    ${titulo_meu_perfil_deslogado}
    ...    ${foto_meu_perfil_deslogado}
    Swipe Down
    Validar elementos visiveis
    ...    ${btn_seguranca}
    ...    ${btn_fale_conosco}
    ...    ${btn_ajuda}
    ...    ${btn_sair_conta}
    
Cenario 002 - Acessar marcacoes
    [Documentation]    Validar acesso tela de marcações
    Acessar meu perfil
    Click Element    ${btn_marcacoes}
    Wait Until Element Is Visible    ${titulo_marcacoes}

Cenario 003 - Acessar anotacoes
    [Documentation]    Validar acesso tela de anotacoes 
    Acessar meu perfil
    Click Element    ${btn_anotacoes}
    Wait Until Element Is Visible    ${titulo_anotacoes}

Cenario 004 - Acessar destaques
    [Documentation]    Validar acesso tela destaques 
    Acessar meu perfil
    Click Element    ${btn_destaques}
    Wait Until Element Is Visible    ${titulo_destaques}

Cenario 005 - Acessar historico
    [Documentation]    Validar acesso tela de historico 
    Acessar meu perfil
    Click Element    ${btn_historico_meu_perfil}
    Wait Until Element Is Visible    ${titulo_historico}

Cenario 006 - Acessar minha assinatura
    [Documentation]    Validar acesso minha assinatura
    Acessar meu perfil
    Click Element    ${btn_minha_assinatura}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 007 - Acessar alterar idioma
    [Documentation]    Validar acesso troca de idioma
    Acessar meu perfil
    Click Element    ${btn_alterar_idioma_meu_perfil}
    Wait Until Element Is Visible    ${titulo_trocar_idioma}

Cenario 008 - Acessar gift card
    [Documentation]    Validar acesso gift card
    Acessar meu perfil
    Click Element    ${btn_gift_code}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 009 - Acessar voucher 
    [Documentation]    Validar acesso voucher
    Acessar meu perfil
    Click Element    ${btn_voucher}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 010 - Acessar seguranca 
    [Documentation]    Acessar segurança
    Acessar meu perfil
    Swipe Down
    Click Element    ${btn_seguranca}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 011 - Acessar fale conosco
    [Documentation]    Acessar fale conosco
    Acessar meu perfil
    Swipe Down
    Click Element    ${btn_fale_conosco}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 012 - Acessar ajuda
    [Documentation]    Acessar ajuda
    Acessar meu perfil
    Swipe Down
    Click Element    ${btn_ajuda}
    Wait Until Element Is Visible    ${titulo_ajuda}

Cenario 013 - logoff
    [Documentation]    fazer logoff
    Acessar meu perfil
    Swipe Down
    Click Element    ${btn_sair_conta}
    Click Element    ${btn_sair_alert}
    Wait Until Element Is Visible    ${input_email}