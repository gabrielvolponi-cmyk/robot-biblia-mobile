*** Settings ***

Resource    ../configs/package.resource
Library     FakerLibrary    locale=pt-BR

Documentation    Testes do fluxo de cadastro


*** Keywords ***

Acessar cadastro
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_cadastrar}

Finalizar step 1 cadastro
    ${first_name}    FakerLibrary.First Name
    Input Text    ${input_name}    ${first_name}    
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    Click Element    ${btn_continue}

Finalizar step 2 Cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_email_cadastro}    ${email}
    Input Text    ${input_confirm_email_cadastro}   ${email}
    Click Element    ${btn_continue}