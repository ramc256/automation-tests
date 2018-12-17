*** Settings ***
Library     Selenium2Library

*** Variables ***
${palabrabuscar}
${navegador}
${URL}
*** Keywords ***
Abrir Navegador y Esperar Logo
    Open Browser  ${URL}    ${Navegador}
    Wait Until Element Is Visible  xpath=//*[@id="hplogo"]

