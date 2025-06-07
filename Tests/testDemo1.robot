*** Settings ***
Documentation    To validate the login form
Library    SeleniumLibrary
#Resource

*** Test Cases ***
Validate Successfully login
    open the browser with the facebook url
#    Fill the login form
#    wait until it check and display error message
#    verify error message is correct

*** Keywords ***
open the browser with the facebook url
    Create Webdriver    Chrome
    Go To    https://facebook.com