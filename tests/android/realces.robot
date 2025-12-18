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
# Cenario 003 - Validar botao check 

Cenario 004 - Validar botao texto biblico
    [Documentation]    Validar clique no botão
    Acessar realces
    Click Element    ${btn_texto_biblico_realces}
    ${tela_vazia}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txt_null_realces}
    IF    ${tela_vazia}
        Pass Execution    Sem cores na tela
    ELSE
        Wait Until Element Is Visible    ${grid_cor}
    END

Cenario 005 - Validar botao comentarios 
    [Documentation]    Validar clique no botão
    Acessar realces
    Click Element    ${btn_comentarios_realces}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 006 - Validar botao cores 
    [Documentation]    Validar clique no botão
    Acessar realces
    Click Element    ${btn_cores_realces}
    ${tela_vazia}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txt_null_realces}
    IF    ${tela_vazia}
        Pass Execution    Sem cores na tela
    ELSE
        Wait Until Element Is Visible    ${grid_cor}
    END

Cenario 007 - Validar botao categorias 
    [Documentation]    Validar clique no botão
    Acessar realces
    Click Element    ${btn_categorias_realces}
    Wait Until Element Is Visible    ${btn_add_categoria}
   

Cenario 008 - Validar botao tags 
    [Documentation]    Validar clique no botão
    Acessar realces
    Click Element    ${btn_tags_realces}
    Wait Until Element Is Visible    ${btn_add_tag}

Cenario 009 - Validar botao ver tudo 
    [Documentation]    Validar clique no botão
    Acessar realces
    Click Element    ${btn_ver_tudo_realces}
    Wait Until Element Is Visible    ${selector_data_realces}
