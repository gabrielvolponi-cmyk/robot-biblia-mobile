*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}     http://localhost:4723
${DEVICE_NAME}       emulator-5554
${PLATFORM_VERSION}  13.0
${APP_PATH}     builds/apk/bfc-debug-2.16.3.apk


*** Keywords ***
Abrir Aplicativo
    [Documentation]    Abre o app da Bíblia no Android usando Appium
    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=Android
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    ...    app=${APP_PATH}
    Sleep    3s

Fechar Aplicativo
    [Documentation]    Fecha o app
    Close Application
