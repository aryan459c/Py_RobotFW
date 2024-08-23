*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com/frames

*** Test Cases ***
Handel Multiple Frames
    Open Browser    ${url}    Chrome
    Maximize Browser Window

    # Switch to the first frame
    Select Frame    id:frame1
    ${frame1_text}=    Get Text    id:sampleHeading
    Log    Text From frame 1: ${frame1_text}

    #switch to main frame
    Unselect Frame

    # Switch to the second frame
    Select Frame    id:frame2
    ${frame1_text}=    Get Text    id:sampleHeading
    Log    Text From frame 1: ${frame1_text}

    Unselect Frame

    Close Browser
