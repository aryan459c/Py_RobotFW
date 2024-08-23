*** Variables ***
@{ITEMS}    apple    banana    cherry

*** Test Cases ***
Loop Through List
    FOR    ${item}    IN    @{ITEMS}
        Log    ${item}
    END