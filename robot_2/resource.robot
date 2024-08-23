*** Settings ***
Documentation    A resouce file with reusable keywords and variables
Library    SeleniumLibrary


*** Variables ***
${user_name}    rahulshettyacademy
${invalid_password}    qwerty_invalid
${valid_password}    learning
${sign_buttom}    signInBtn
${url}    https://rahulshettyacademy.com/loginpagePractise/


*** Keywords ***
Open the browser with perfect url
    Create Webdriver    Chrome
    Go To    ${url}