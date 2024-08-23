*** Settings ***
Documentation    Login Fill RB CB DD
Library    SeleniumLibrary
Test Setup    Open the browser with perfect url
Resource    resource.robot

*** Variables ***


*** Test Cases ***
Full Fill Login
    fill login form    ${user_name}    ${valid_password}


*** Keywords ***
fill login form
    [Arguments]    ${user}    ${pass}
    Input Text    id:username    ${user}
    Input Password    id:password    ${pass}
    Click Element    xpath://input[@value='user']
    Wait Until Element Is Visible    css:div.modal-content
    Click Element    id:okayBtn
    Select From List By Value    css:select.form-control    teach
    Select Checkbox    id:terms
    Checkbox Should Be Selected    id:terms