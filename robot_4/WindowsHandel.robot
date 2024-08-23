*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com/browser-windows

*** Test Cases ***
Handel Multiple Browser Windows
    Open Browser    ${url}    Chrome
    Maximize Browser Window

    #Click button to open a new Window
    Click Button    id:tabButton

    #Get window Handles
    ${all_window}=    Get Window Handles

    #Switch to the new window
    Switch Window    ${all_window[1]}
#    ${titles}=    Get Window Titles
    ${new_window_text}=    Get Text    xpath://h1
    Log    Test From new window: ${new_window_text}