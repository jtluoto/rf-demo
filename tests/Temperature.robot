*** Settings ***
Library           Selenium2Library
Suite Teardown    Close browser

*** Variables ***
${BROWSER}     chrome

*** Test Cases ***
Get Temperature In Helsinki
    Open Google Weather Forecast
    ${temperature} =    Get Text    wob_tm
    Log To Console     The temperature in Helsinki is ${temperature}
    
*** Keywords ***
Open Google Weather Forecast
    Open Test Browser    https://www.google.com/search?q=helsinki+temperature
    
Open Test Browser
    [Arguments]     ${url}    ${browser}=chrome
    Open Browser    ${url}    browser=${browser}
