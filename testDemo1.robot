*** Settings ***
Documentation    To validate the Login form
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Validate UnSuccesful Login
    Open the browser with perfect url
    Fill the login form
#    Wait until it check and display the error message
#    Verify error message is correct


*** Keywords ***
Open the browser with perfect url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/

Fill the login form
    Input Text    id:username    sunil
    Input Password    id:password    Aryan
    Click Button    id:signInBtn

