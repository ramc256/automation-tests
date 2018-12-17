*** Settings ***
Library     Selenium2Library

*** Variables ***
${browser}      chrome
${homepage}     http://automationpractice.com/index.php
${select}       Women
*** Keywords ***
Select Women Option
    Click Element xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Title Should Be     Women - My Store
*** Test Cases ***
001 Caso con condicionales
    Open browser    ${homepage}    ${browser}
    Wait Until Element Is Visible  xpath=//*[@id="header_logo"]/a/img
    Run Keyword If      '${select}'=='Women'     Select Women Option
    Close Browser