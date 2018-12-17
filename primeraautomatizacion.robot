*** Settings ***
Documentation       Existe en un documento de texto los pasos manuales
...                 Esta es mi primera automatizacion
Library             Selenium2Library

*** Variables ***
${palabraABuscar}   Winston Castillo
${Navegador}    chrome
${URL}      https://www.google.com/

*** Test Cases ***
G001 Búsqueda de palabras en google
    Open Browser    ${URL}     ${Navegador}
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Input Text      xpath=//*[@id="lst-ib"]     ${palabraABuscar}
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[3]/center/input[1]
    Title Should Be     ${palabraABuscar} - Buscar con Google
    Page Should Contain     ${palabraABuscar}
    Close Browser

G002 Hacer click en el botón de búsqueda sin escribir palabras en Google
    Open Browser    ${URL}     ${Navegador}
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser
