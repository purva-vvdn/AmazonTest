*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}       chrome
${URL}           https://www.amazon.com/

*** Test Cases ***
Navigate to Amazon
    [Documentation]    This test opens the Amazon homepage and verifies the page title.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Amazon.com. Spend less. Smile more.
    Page Should Contain Element    xpath=//span[contains(text(),'Hello, Sign in')]
    [Teardown]    Close Browser
