*** Settings ***
Resource    ../../resources/configs/package.resource

Test Tags    e2e_android

Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Cenario 001 - Abrir App da Biblia no Android
    [Documentation]    Teste simples abrindo o app da Bíblia no Android
    Sleep    3s

Cenario 002 - Completar onboarding no Android
    [Documentation]    Teste simples completando o onboarding no Android
    [Tags]    onboarding_001
    Concluir Onboarding

    

