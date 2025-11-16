*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android     suite_cadastro

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo
Library    FakerLibrary    locale=pt-BR

*** Test Cases ***

Cenario 001 - Cadastro completo            ### TO-DO: FINALIZAR CADASTRO ###
    [Documentation]    Caso de teste para realizar cadastro completo de usuário
    Acessar cadastro
    Finalizar step 1 cadastro
    Finalizar step 2 Cadastro


Cenario 002 - Cadastro sem primeiro nome
    [Documentation]    Cadastro de usuario sem primeiro nome
    Acessar cadastro    
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    Element Should Be Disabled    ${btn_continue}

Cenario 003 - Cadastro sem sobrenome
    [Documentation]    Cadastro de usuario sem sobrenome
    Acessar cadastro    
    ${first_name}    FakerLibrary.first_name
    Input Text    ${input_name}    ${first_name}
    Element Should Be Disabled    ${btn_continue}

Cenario 004 - Cadastro sem e-mail
    [Documentation]    Cadastro de usuario sem email
    Acessar cadastro
    Finalizar step 1 cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_confirm_email_cadastro}    ${email}
    Element Should Be Disabled    ${btn_continue}

Cenario 005 - Cadastro sem confirmar e-mail
    [Documentation]    Cadastro de usuario sem confirmar email
    Acessar cadastro
    Finalizar step 1 cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_email_cadastro}    ${email}
    Element Should Be Disabled    ${btn_continue}

Cenario 006 - Preencher nome completo e voltar
    [Documentation]    Validar botao voltar no 1 step cadastro
    Acessar cadastro
    ${first_name}    FakerLibrary.First Name
    Input Text    ${input_name}    ${first_name}
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    Click Element    ${btn_back}
    Element Should Be Visible    ${scroll_view_login}

Cenario 007 - Preencher campos de e-mail e voltar
    [Documentation]    Validar botao voltar no 2 step cadastro
    Acessar cadastro
    Finalizar step 1 cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_email_cadastro}    ${email}
    Input Text    ${input_confirm_email_cadastro}    ${email}
    Click Element    ${btn_back}
    Element Should Be Visible    ${input_name}

Cenario 008 - Cadastro com e-mail de confirmacao diferente
    [Documentation]    Validar cadastro com email diferente na confirmacao
    Acessar cadastro
    Finalizar step 1 cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_email_cadastro}    ${email}
    ${email_diferente}    FakerLibrary.Email
    Input Text    ${input_confirm_email_cadastro}    ${email_diferente}
    Element Should Be Disabled    ${btn_continue}

Cenario 009 - Cadastro com nome null
    Acessar cadastro
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    Element Should Be Disabled    ${btn_continue}

Cenario 010 - Cadastro com sobrenome null
    Acessar cadastro
    ${first_name}    FakerLibrary.First Name
    Input Text    ${input_last_name}    ${First_name}
    Element Should Be Disabled    ${btn_continue}

Cenario 011 - Cadastro com 1 step null
    Acessar cadastro
    Element Should Be Disabled    ${btn_continue}

Cenario 012 - Cadastro com e-mail null
    Acessar cadastro
    Finalizar step 1 cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_confirm_email_cadastro}    ${email}
    Element Should Be Disabled    ${btn_continue}

Cenario 013- Cadastro com confirmaçao de e-mail null
    Acessar cadastro
    Finalizar step 1 cadastro
    ${email}    FakerLibrary.Email
    Input Text    ${input_email_cadastro}    ${email}
    Element Should Be Disabled    ${btn_continue}
Cenario 014 - Cadastro com 2 step null
    Acessar cadastro
    Finalizar step 1 cadastro
    Element Should Be Disabled    ${btn_continue}

Cenario 015 - input numeros no campo de nome            ### BUG ###
    Acessar cadastro
    Input Text    ${input_name}    1234567890
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    Element Should Be Disabled    ${btn_continue}

Cenario 016 - input de caracter especial no campo de nome        ### BUG ###
    Acessar cadastro
    Input Text    ${input_name}    !@#$%¨&**
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    Element Should Be Disabled    ${btn_continue}

Cenario 017 - input de numeros no campo sobrenome        ### BUG ###
    Acessar cadastro
    ${first_name}    FakerLibrary.first Name
    Input Text    ${input_name}    ${first_name}
    Input Text    ${input_last_name}    1234567890
    Element Should Be Disabled    ${btn_continue}

Cenario 018 - input de caracter especial no campo sobrenome        ### BUG ###
    Acessar cadastro
    ${first_name}    FakerLibrary.first Name
    Input Text    ${input_name}    ${first_name}
    Input Text    ${input_last_name}    !@#$%¨&*
    Element Should Be Disabled    ${btn_continue}









