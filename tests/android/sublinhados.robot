*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_sublinhados

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Cenario 001 - pre requisitos
    [Documentation]    pre requisitos tela de sublinhados
    Acessar sublinhados
    Validar elementos visiveis
    ...    ${header_sublinhados}
    ...    ${btn_voltar_sublinhados}
    ...    ${btn_check_sublinhados}
    ...    ${btn_texto_biblico_sublinhados}
    ...    ${btn_comentarios_sublinhados}
    ...    ${btn_cores_sublinhados}
    ...    ${btn_categorias_sublinhados}
    ...    ${btn_tags_sublinhados}
    ...    ${btn_ver_tudo_sublinhados}

Cenario 002 - Validar botao voltar
    [Documentation]    Valida o botão voltar da pagina
    Acessar sublinhados
    Click Element    ${btn_voltar_sublinhados}
    Wait Until Element Is Visible    ${btn_sublinhados}

# Cenario 003 - Validar botao check 

Cenario 004 - Validar botao texto biblico
    [Documentation]    Validar clique no botão
    Acessar sublinhados
    Click Element    ${btn_texto_biblico_sublinhados}
    ${tela_vazia}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txt_null_sublinhados}
    IF    ${tela_vazia}
        Pass Execution    Sem cores na tela
    ELSE
        Wait Until Element Is Visible    ${grid_cor}
    END

Cenario 005 - Validar botao comentarios 
    [Documentation]    Validar clique no botão
    Acessar sublinhados
    Click Element    ${btn_comentarios_sublinhados}
    Wait Until Element Is Visible    ${alerta_produto_pago}

Cenario 006 - Validar botao cores 
    [Documentation]    Validar clique no botão
    Acessar sublinhados
    Click Element    ${btn_cores_sublinhados}
    ${tela_vazia}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${txt_null_sublinhados}
    IF    ${tela_vazia}
        Pass Execution    Sem cores na tela
    ELSE
        Wait Until Element Is Visible    ${grid_cor}
    END

Cenario 007 - Validar botao categorias 
    [Documentation]    Validar clique no botão
    Acessar sublinhados
    Click Element    ${btn_categorias_sublinhados}
    Wait Until Element Is Visible    ${btn_add_categoria}
   

Cenario 008 - Validar botao tags 
    [Documentation]    Validar clique no botão
    Acessar sublinhados
    Click Element    ${btn_tags_sublinhados}
    Wait Until Element Is Visible    ${btn_add_tag}

Cenario 009 - Validar botao ver tudo 
    [Documentation]    Validar clique no botão
    Acessar sublinhados
    Click Element    ${btn_ver_tudo_sublinhados}
    Wait Until Element Is Visible    ${selector_data_sublinhados}
