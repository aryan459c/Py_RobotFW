*** Settings ***
Documentation    Insta Login Validation
Library    SeleniumLibrary
Test Setup    Open the browser a perfect url
Resource    resource.robot
*** Variables ***

*** Test Cases ***
Login Validatetion
    Fill the login form    ${user_name}    ${password}    ${signin_btn}

*** Keywords ***
Fill the login form
    [Arguments]    ${user}    ${pass}    ${submit}
    Input Text    xpath://input[@name="username"]    ${user}
    Input Password    xpath://input[@name="password"]    ${pass}
    Click Button    ${submit}