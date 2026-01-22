*** Settings ***

Resource    ../configs/package.resource

Documentation    Testes do fluxo de configuracoes


*** Keywords ***

Acessar configuracoes
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_entrar_sem_cadastro}
    Click Element    ${btn_configuracoes}






