*** Settings ***
Library    MathLibrary.py

*** Variables ***
${num1}    10
${num2}    20
${expected_res}    30

*** Test Cases ***
Validate Addition Of Two Number
    ${num1}    Evaluate    ${num1}
    ${num2}    Evaluate    ${num2}
    ${expected_res}    Evaluate    ${expected_res}
    
    ${res}=    Add Two Num    ${num1}    ${num2}
    Should Be Equal    ${res}    ${expected_res}