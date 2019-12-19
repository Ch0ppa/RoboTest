*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
OpenBrowser
    Open Browser    https://www.comap-control.com/    chrome
    Wait Until Element Is Visible    name=p$lt$ctl05$wCLATC$btnAllowAll    
    Click Button    name=p$lt$ctl05$wCLATC$btnAllowAll
Login
    Wait Until Element Is Visible    xpath: //*[contains(text(), "Log")]
    Click Element    xpath: //*[contains(text(), "Log")]  
    Wait Until Element Is Visible    name=p$lt$ctl03$pageplaceholder$p$lt$ctl00$ComApLogonForm$Login1$UserName    
    Input Text    name=p$lt$ctl03$pageplaceholder$p$lt$ctl00$ComApLogonForm$Login1$UserName    comapkenticotest@gmail.com   
    Input Text    name=p$lt$ctl03$pageplaceholder$p$lt$ctl00$ComApLogonForm$Login1$Password    CBeBFg@Kn7@arCn
    Click Button    name=p$lt$ctl03$pageplaceholder$p$lt$ctl00$ComApLogonForm$Login1$LoginButton
Go to homepage
    Go To    https://www.comap-control.com/
    Wait Until Element Is Visible    xpath: //*[contains(text(), "Search")]
Search    
    Click Element    xpath: //*[contains(text(), "Search")]
    Wait Until Element Is Visible    name=p$lt$ctl03$pageplaceholder$p$lt$ctl00$ISSB$txtWord
    Input Text    name=p$lt$ctl03$pageplaceholder$p$lt$ctl00$ISSB$txtWord    IN-NT PLUS
    Press Keys    none    ENTER
Result analytics    
    Wait Until Element Is Visible    xpath: //*[contains(text(), "InteliNano NT Plus")]
Result analytics 2    
    ${count} =     Get Element Count    name=white-box white-box--search hover-shadow white-box__intelisearch
    Should Be Equal    ${count}    ${0}
CloseBrowser
    Close Browser
    
***comment***    
    
