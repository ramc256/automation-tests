*** Settings ***
Documentation       Existe en un documento de texto los pasos manuales
...                 Esta es mi primera automatizacion
Library             Selenium2Library

*** Test Cases ***
G001 Búsqueda de palabras en google
    Open Browser    https://www.google.com/     chrome
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Input Text      xpath=//*[@id="lst-ib"]     casos de prueba
    Click Element       xpath=//*[@id="hplogo"]
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[3]/center/input[1]
    Title Should Be     casos de prueba - Buscar con Google
    Page Should Contain     casos de prueba
    Close Browser

G002 Hacer click en el botón de búsqueda sin escribir palabras en Google
    Open Browser    https://www.google.com/     chrome
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Click Element       xpath=//*[@id="tsf"]/div[2]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser
