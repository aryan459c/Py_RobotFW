*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}        http://google.com
${Browser}        chrome
*** Test Cases ***
LoginForm
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Input Text    name:q    pornhub
    Click Button    name:btnK


*** Keywords ***
