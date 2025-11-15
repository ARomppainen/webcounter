*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary

*** Variables ***
${SERVER}    localhost:5001
${DELAY}     0.5 seconds
${HOME_URL}  http://${SERVER}
${BROWSER}   chrome
${HEADLESS}  false

*** Keywords ***
Configure Suite
    Reset Counter
    Set Selenium Speed  ${DELAY}
    Open Browser  browser=${BROWSER}

Reset Counter
    ${response}=    POST  ${HOME_URL}/reset
    Should Be Equal As Strings    200  ${response.status_code}
