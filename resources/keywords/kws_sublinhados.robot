*** Settings ***

Resource    ../configs/package.resource

Documentation    Testes do fluxo da tela de sublinhados


*** Keywords ***

Acessar sublinhados
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_entrar_sem_cadastro}
    Click Element    ${btn_meu_perfil}
    Click Element    ${btn_destaques}
    Click Element    ${btn_sublinhados}