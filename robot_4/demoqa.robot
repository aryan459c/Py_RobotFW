*** Settings ***
Documentation    Test All Condition DemoQa
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Qa Test Case DemoQa
    Open the browser with perfect url
    Click on Elements
    Get List Of Items Under Elements
*** Keywords ***
Open the browser with perfect url
    Open Browser    https://demoqa.com/    Chrome
    Maximize Browser Window
Click on Elements
    Execute Javascript     window.scrollBy(0,500)
    Click Element    xpath://div[@class='card-body'][1]
Get List Of Items Under Elements
    @{Element_List}=    Create List    xpath://div[@class='element-list collapse show']/ul[@class='menu-list']
    FOR    ${i}    IN    @{Element_List}
    Log To Console    ${i}
    END