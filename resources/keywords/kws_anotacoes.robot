*** Settings ***

Resource    ../configs/package.resource

Documentation    Keywords do fluxo de anotaçoes


*** Keywords ***

Acessar anotacoes
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_entrar_sem_cadastro}
    Click Element    ${btn_meu_perfil}
    Click Element    ${btn_anotacoes}