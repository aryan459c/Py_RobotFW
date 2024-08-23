*** Settings ***
Documentation    A source file with reusable keyword and variable
Library    SeleniumLibrary


*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${user_name}    student
${password}    Password123
${signin_btn}    submit

*** Keywords ***
Open the browser a perfect url
    Create Webdriver    Chrome
    Go To    ${url}
