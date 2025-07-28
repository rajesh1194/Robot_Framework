*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Open MakeMyTrip And Click Login
    Open Browser    https://www.makemytrip.com/    Edge
    Maximize Browser Window
    Sleep    5s
    Click Element    xpath=//div/section/span[@class='commonModal__close']
    Sleep    3s
    Click Element    xpath=//input[@id='fromCity']
    Sleep    3s
    Input Text       xpath=//input[@placeholder='From']    Bengaluru
    Sleep    2s
    Press Key        xpath=//input[@placeholder='From']    \\3
    Sleep    2s
    Click Element    xpath=(//div[@class='makeFlex column flexOne'])[1]
    Sleep    3s
    Click Element    xpath=//input[@id='toCity']
    Sleep    1s
    Input Text       xpath=//input[@placeholder='To']    Guwahati
    Sleep    2s
    Press Key        xpath=//input[@placeholder='To']    \\3
    Sleep    1s
    Click Element    xpath=(//div[@class='makeFlex column flexOne'])[1]
    Sleep    2s
    
    
    Click Element    xpath=//div[@aria-label='Sun Jul 20 2025']
    Sleep    4s


    Click Element    xpath=//a[text()='Search']

    Sleep    20s
   
    #Close Browser