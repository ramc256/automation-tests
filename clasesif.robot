*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}      chrome
${homepage}     http://automationpractice.com/index.php
${select}       Women
*** Test Cases ***
001 Caso con condicionales
    Open browser    ${homepage}    ${browser}
    Wait Until Element Is Visible  xpath=//*[@id="header_logo"]/a/img
    Run Keyword If      '${select}'=='Women'     Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Close Browser