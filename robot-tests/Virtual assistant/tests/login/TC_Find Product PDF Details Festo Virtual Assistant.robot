*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    OperatingSystem

*** Variables ***
${URL}               https://virtualassistant-staging.d35l8nn6frge72.amplifyapp.com
${BROWSER}           Edge
${USERNAME}          de2frsr1    
${EMAIL}             de2frsr1@festo.net
${QUESTION}          PDF link Round Cylinder CRDSNU  

*** Test Cases ***
Login_FestoVirtualAssistant
    #${options}=    Evaluate    sys.modules['selenium.webdriver'].EdgeOptions()    sys, selenium.webdriver
    #Call Method    ${options}    add_argument    --inprivate
    #Create Webdriver    Edge    options=${options}
    #Go To    ${URL}
    Open Browser      ${URL}  ${BROWSER} 
    Maximize Browser Window
    ${is_present}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible    xpath=//button[contains(@id,'notice-agree-button')]    10s
    ...    
    IF    ${is_present}
        Click Element  xpath=//button[contains(@id,'notice-agree-button')]
        Log            Clicked on 'Accept All' cookies button
    ELSE
        Log            'Accept All' button not present, continuing
    END

    Wait Until Page Contains Element    xpath=//div[text()='Login with Festo Single Sign-on']    timeout=10
    #Click Element    xpath=//div[text()='Login with Festo Single Sign-on']
    #Wait Until Page Contains Element    xpath=//div/input[@type='email']  timeout=30
    #Input Text    xpath=//div/input[@type='email']    ${EMAIL}
    #Click Element    xpath=//div/input[@type='submit']

    Click Element      xpath=//div[text()='Login with Festo Single Sign-on']
    Sleep   50ms
    Wait Until Page Contains Element    xpath=//div/p[text()="Hi, I am the Virtual Assistant of Festo"]  timeout=30
    Sleep   1

Search_ProductLink_FestoVirtualAssistant

    Input Text         xpath=//div/textarea[contains(@placeholder,'ask your question')]    ${QUESTION}
    Sleep   2
    Click Element      xpath=//button[@type='submit']
    Sleep   3
    #Click Element    xpath=(//span[contains(text(),'Round Cylinder CRDSNU')]/../a)[last()]
    Wait Until Element Is Visible    (//div[@class='feedback undefined'])[last()]    30s

OpenProductLink_Navigation_FestoVirtualAssistant

    Click Element      xpath=(//a)[last()]
    Sleep   5
    
Logout_FestoVirtualAssistant

    Click Element      xpath=//button/i[contains(@class,'people-user')]
    Click Element      xpath=//button[text()='Logout']
    Sleep   5



    
