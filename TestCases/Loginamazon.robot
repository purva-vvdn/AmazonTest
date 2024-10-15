*** Settings ***
Library    SeleniumLibrary
Resource  ../
*** Test Cases ***
Amazon Login Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element   xpath=//span[contains(text(),'Hello, Sign in')]
    Input Text      id=ap_email    ${EMAIL}
    Click Button    id=continue
    Input Text      id=ap_password    ${PASSWORD}
    Click Button    id=signInSubmit
    Wait Until Page Contains Element   xpath=//span[contains(text(),'Account & Lists')]    timeout=10s
    [Teardown]    Close Browser