*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}     http://localhost:4723
${DEVICE_NAME}       emulator-5554
${PLATFORM_VERSION}  15.0
${APP_PATH}     builds/apk/bfc-debug-2.16.7 (2).apk


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
    ...    autograntpermissions=${True}
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

Selecionar texto no elemento
    [Arguments]    ${locator}    ${duration_ms}=1000ms
    Wait Until Element Is Visible    ${locator}    10s
    ${location}=    Get Element Location    ${locator}
    ${size}=        Get Element Size       ${locator}
    ${x}=    Evaluate    int(${location['x']} + ${size['width']} / 2)
    ${y}=    Evaluate    int(${location['y']} + ${size['height']} / 2)
    Swipe    start_x=${x}    start_y=${y}    end_x=${x}    end_y=${y}    duration=${duration_ms}
    Sleep    0.5s

Condicional elemento selecionado
    [Arguments]    ${locator}
    ${elemento_selecionado}=    Get Element Attribute    ${locator}    checked
    IF    '${elemento_selecionado}' == 'false'
        Click Element    ${locator}
    END

Mover Slider
    [Arguments]    ${locator}    ${percentual_destino}=0.5
    ${valor_atual}=    Get Element Attribute    ${locator}    text
    ${valor_max}=      Set Variable    255.0
    ${loc}=     Get Element Location    ${locator}
    ${size}=    Get Element Size        ${locator}
    ${y}=    Evaluate    ${loc["y"]} + ${size["height"]} / 2
    ${percentual_atual}=    Evaluate    float(${valor_atual}) / ${valor_max}
    ${start_x}=    Evaluate    int(${loc["x"]} + ${size["width"]} * ${percentual_atual})
    ${end_x}=    Evaluate    int(${loc["x"]} + ${size["width"]} * ${percentual_destino})
    ${y_int}=    Evaluate    int(${y})
    Swipe    start_x=${start_x}    start_y=${y_int}    end_x=${end_x}    end_y=${y_int}    duration=700

Obter valor do slider
    [Arguments]    ${locator}
    ${valor}=    Get Element Attribute    ${locator}    text
    RETURN    ${valor}