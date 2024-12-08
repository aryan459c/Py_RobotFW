*** Settings ***
Documentation    OpenBrowserCorrectURL
Library    SeleniumLibrary
*** Variables ***
${url}    https://facebook.com
*** Test Cases ***
Login With ID Password
    Open browser with the perfect url
    Fill the login field
*** Keywords ***
Open browser with the perfect url
    Create Webdriver    Chrome
    Go To    ${url}
Fill the login field
    Input Text    id:email    sunilweb143@gamil.com
    Input Password    id:pass    abc
    Click Button    xpath://button[@name="login"]