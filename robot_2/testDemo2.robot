*** Settings ***
Documentation    To validate the Login form
Library    SeleniumLibrary
Test Setup    Open the browser with perfect url
Resource    resource.robot


*** Variables ***
${error_message_login}    css:.alert-danger
${shop_page_load}    css:.nav-link

*** Test Cases ***
Validate UnSuccesful Login
    Fill the login form    ${user_name}    ${invalid_password}    ${sign_buttom}
    Wait until Element is loacted in the page    ${error_message_login}
#    Verify error message is correct

Validate Card dispaly in the Shopping Page
    Fill the login form    ${user_name}    ${valid_password}    ${sign_buttom}
    Wait until Element is loacted in the page    ${shop_page_load}  


*** Keywords ***
Fill the login form
    [Arguments]    ${user_name}    ${password}    ${sign_buttom}
    Input Text    id:username    ${user_name}    
    Input Password    id:password    ${password}
    Click Button    ${sign_buttom}

Wait until Element is loacted in the page
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}

Verify error message is correct
    ${result}=    Get Text    ${error_message_login}
#    Should Be Equal As Strings    ${result}    Incorrect username/password.
    Element Text Should Be    ${error_message_login}    Incorrect username/password.
