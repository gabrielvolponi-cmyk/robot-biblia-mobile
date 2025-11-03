*** Settings ***
Library    AppiumLibrary

Test Tags    ios

*** Variables ***
${APPIUM_SERVER}     http://localhost:4723/wd/hub
${DEVICE_NAME}       iPhone 17
${PLATFORM_VERSION}  26.0
${BUNDLE_ID}         com.apple.Preferences

*** Test Cases ***
Abrir Ajustes no iOS
    [Documentation]    Teste simples abrindo o app Ajustes
    [Tags]    ios
    Open Application    ${APPIUM_SERVER}
    ...    platformName=iOS
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    bundleId=${BUNDLE_ID}
    ...    automationName=XCUITest
    Sleep    3s
    Close Application
