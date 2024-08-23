*** Settings ***
Documentation    To validate the Login form
Library    SeleniumLibrary

*** Variables ***
${error_message_login}    css:.alert-danger

*** Test Cases ***
Validate UnSuccesful Login
    Open the browser with perfect url
    Fill the login form
    Wait until it check and display the error message
    Verify error message is correct


*** Keywords ***
Open the browser with perfect url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/

Fill the login form
    Input Text    id:username    krishna
    Input Password    id:password    qwerty
    Click Button    id:signInBtn

Wait until it check and display the error message
    Wait Until Element Is Visible    ${error_message_login}

Verify error message is correct
    ${result}=    Get Text    ${error_message_login}
#   Should Be Equal As Strings    ${result}    Incorrect username/password.
    Element Text Should Be    ${error_message_login}    Incorrect username/password.