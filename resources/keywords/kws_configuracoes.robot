*** Settings ***

Resource    ../configs/package.resource

Documentation    Testes do fluxo de configuracoes


*** Keywords ***

Acessar configuracoes
    Click Element    ${btn_entrar}
    Element Should Be Visible    ${scroll_view_login}
    Click Element    ${btn_entrar_sem_cadastro}
    Click Element    ${btn_configuracoes}

Obter valor do brilho
    [Arguments]    ${locator}
    ${valor}=    Get Element Attribute    ${locator}    text
    RETURN    ${valor}

Mover Slider De Brilho
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