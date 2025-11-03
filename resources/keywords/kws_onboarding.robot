*** Settings ***

Resource    ../configs/package.resource

Documentation    Testes do fluxo de onboarding


*** Keywords ***

Concluir Onboarding
    Click Element    ${next_aba_onboarding1} 
    
    Click Element   ${next_aba_onboarding1} 

    Click Element    ${next_aba_onboarding1} 

    Click Element    ${next_aba_onboarding1} 

    Click Element    ${btn_entrar} 

    Sleep    3s

