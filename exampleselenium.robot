*** Settings ***
Library              Selenium2Library

*** Variables ***
${palabraABuscar}   casos de prueba
${Navegador}    chrome
${URL}      https://www.google.com/
*** Keywords ***
Abrir Navegador y Esperar Logo
    Open Browser  ${URL}    ${Navegador}
    Wait Until Element Is Visible  xpath=//*[@id="hplogo"]
*** Test Cases ***
GOO1 Busqueda de la palabras en google
    Abrir Navegador y Esperar Logo
    Input Text      xpath=//*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input    ${palabraABuscar}
    Click Element       xpath=//*[@id="hplogo"]
    Click Element       xpath=//*[@id="tsf"]/div[2]/div/div[3]/center/input[1]
    Title Should Be     ${palabraABuscar} -- Buscar con Google
    Page Should Contain     ${palabraABuscar}

GOO2 Hacer click en el boton de sin escrbir ninguna palabras en google
    Abrir Navegador y Esperar Logo
    Click Element       xpath=/html/body/div/div[3]/form/div[2]/div/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser

