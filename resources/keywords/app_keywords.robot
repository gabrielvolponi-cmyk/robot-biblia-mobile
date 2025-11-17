*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}     http://localhost:4723
${DEVICE_NAME}       emulator-5554
${PLATFORM_VERSION}  15.0
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
    Capture Page Screenshot
    Close Application

Validar elementos visiveis
    [Documentation]    Valida elementos em uma lista
    [Arguments]    @{elementos}
    FOR    ${el}    IN    @{elementos}
        Element Should Be Visible    ${el}
    END

Swipe Down
    ${width}=    Get Window Width
    ${height}=   Get Window Height
    ${start_x}=  Evaluate    ${width} * 0.5
    ${start_y}=  Evaluate    ${height} * 0.8
    ${end_x}=    Evaluate    ${width} * 0.5
    ${end_y}=    Evaluate    ${height} * 0.3
    Swipe    start_x=${start_x}    start_y=${start_y}    end_x=${end_x}    end_y=${end_y}    duration=800ms