*** Settings ***
Library    PrimeNumOrNot.py
*** Variables ***
${num1}    7
${num2}    10
${num3}    0
${num4}    -7
${num5}    97
${num6}    100
*** Test Cases ***
Validate Prime Number
    Positive Test Case
    Negative Test Case
    Case Zero
    Negative Number
    Large Prime
    Large Composite
*** Keywords ***
Positive Test Case
    ${result}=    Evaluate    ${num1}
    ${result}=    Prime Num Or Not    ${result}
    Should Be True    ${result}

Negative Test Case
    ${result}=    Evaluate    ${num2}
    ${result}=    Prime Num Or Not    ${result}
    Should Not Be True    ${result}

Case Zero
    ${result}=    Evaluate    ${num3}
    ${result}=    Prime Num Or Not    ${result}
    Should Not Be True    ${result}

Negative Number
    ${result}=    Evaluate    ${num4}
    ${result}=    Prime Num Or Not    ${result}
    Should Not Be True    ${result}

Large Prime
    ${result}=    Evaluate    ${num5}
    ${result}=    Prime Num Or Not    ${result}
    Should Be True    ${result}

Large Composite
    ${result}=    Evaluate    ${num6}
    ${result}=    Prime Num Or Not    ${result}
    Should Not Be True    ${result}
