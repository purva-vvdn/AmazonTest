*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}       chrome
${URL}           https://www.amazon.com/

*** Test Cases ***
Navigate to Amazon in Headless Mode
    [Documentation]    This test opens the Amazon homepage in headless mode and verifies the page title.
    Open Browser    ${URL}    ${BROWSER}    options=add_argument(--headless)    add_argument(--disable-gpu)    add_argument(--window-size=1920,1080)
    Title Should Be    Amazon.com. Spend less. Smile more.
    Page Should Contain Element    xpath=//span[contains(text(),'Hello, Sign in')]
    [Teardown]    Close Browser
