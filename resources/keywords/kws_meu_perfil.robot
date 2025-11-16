*** Settings ***

Resource    ../configs/package.resource
Library     FakerLibrary    locale=pt-BR

Documentation    Testes do fluxo de cadastro


*** Keywords ***

Acessar meu perfil
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_entrar_sem_cadastro}
    Click Element    ${btn_meu_perfil}