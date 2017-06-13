*** Settings ***
Library        Selenium2Library
Library        Dialogs

*** Variables ***
${BROWSER}     chrome

*** Test Cases ***
Move White And Then Black If User Answers Yes
    Open Chess
    Move White
    ${answer} =    Ask if User Wants To Continue
    Run Keyword If    '${answer}' == 'Yes'    Move Black
    
*** Keywords ***
Open Chess
    Open Test Browser    http://plainchess.timwoelfle.de/
    Click Element    playOffline
    Sleep    3 seconds

Open Test Browser
    [Arguments]     ${url}    ${browser}=chrome
    Open Browser    ${url}    browser=${browser}

Move White
    Drag And Drop    32    34

Ask If User Wants To Continue
    ${answer} =    Get Selection From User    Continue with the next move?    Yes    No
    [return]    ${answer}

Move Black
    Drag And Drop    57    55
