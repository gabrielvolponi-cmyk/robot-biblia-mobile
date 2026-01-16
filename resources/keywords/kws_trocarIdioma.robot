*** Settings ***

Resource    ../configs/package.resource

Documentation    Testes do fluxo de troca de idioma


*** Keywords ***

Acessar troca de idioma
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_entrar_sem_cadastro}
    Click Element    ${btn_meu_perfil}
    Click Element    ${btn_alterar_idioma_meu_perfil}
    
