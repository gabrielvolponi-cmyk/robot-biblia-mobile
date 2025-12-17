*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_realces

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - pre requisitos
    [Documentation]    pre requisitos tela de realces
    Acessar realces
    Validar elementos visiveis
    ...    ${header_realces}
    ...    ${btn_voltar_realces}
    ...    ${btn_check_realces}
    ...    ${btn_texto_biblico_realces}
    ...    ${btn_comentarios_realces}
    ...    ${btn_cores_realces}
    ...    ${btn_categorias_realces}
    ...    ${btn_tags_realces}
    ...    ${btn_ver_tudo_realces}
    
Cenario 002 - Validar botao voltar
    [Documentation]    Valida o botão voltar da pagina
    Acessar realces
    Click Element    ${btn_voltar_realces}
    Wait Until Element Is Visible    ${btn_realces}
Cenario 003 - Validar botao check 

Cenario 004 - Validar botao texto biblico

Cenario 005 - Validar botao comentarios 

Cenario 006 - Validar botao cores 

Cenario 007 - Validar botao categorias 

Cenario 008 - Validar botao tags 

Cenario 009 - Validar botao ver tudo 
