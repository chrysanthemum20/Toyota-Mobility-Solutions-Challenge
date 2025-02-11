*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://toyotalogistics.com.ph/
${BROWSER}    chrome
${EMAIL}    qujpacis@tip.edu.ph
${NUMBER}    09568936937

*** Test Cases ***
Open Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Signup Page
    Validate Registration Page
    Close Browser

Enter Valid Username and Password
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Login Page
    Enter Username and Valid Password
    Click Login
    Close Browser

Enter Valid Username and Invalid Password
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Login Page
    Enter Username and Invalid Password
    Click Login
    Validate Error Message    Mobile Number is invalid.
    Close Browser

Enter Invalid Username and Valid Password
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Login Page
    Enter Invalid Username and Valid Password
    Click Login
    Validate Error Message    Email format is invalid.
    Close Browser

Leave Email And Phone Blank
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Login Page
    Leave Email And Phone Blank Fields
    Click Login
    Validate Error Message    Email is required.
    Close Browser

Enter Special Characters In Email And Phone
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Login Page
    Enter Special Characters In Email And Phone
    Click Login
    Validate Error Message    Mobile number is invalid.
    Close Browser

Validate Form Fields And UI
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Go To Signup Page
    Validate Registration Page
    Validate Dropdowns And Checkboxes
    Close Browser

*** Keywords ***
Go To Signup Page
    Click Element    //a[@href='/authentication']

Validate Registration Page
    Wait Until Element Is Visible    //label[@for='firstName']    timeout=10s
    Wait Until Element Is Visible    //label[@for='lastName']    timeout=10s
    Wait Until Element Is Visible    //label[@for='email']    timeout=10s
    Wait Until Element Is Visible    //label[@for='mobileNumber']    timeout=10s
    Wait Until Element Is Visible    //button[@type='submit']    timeout=10s

Go To Login Page
    Click Element    //a[@href='/authentication/login']

Enter Username and Valid Password
    Wait Until Element Is Visible    //input[@id='email']    timeout=10s
    Input Text    //input[@id='email']    ${EMAIL}
    Input Text    //input[@id='phone']    ${NUMBER}

Enter Username and Invalid Password
    Wait Until Element Is Visible    //input[@id='email']    timeout=10s
    Input Text    //input[@id='email']    ${EMAIL}
    Input Text    //input[@id='phone']    +6390881755556

Enter Invalid Username and Valid Password
    Wait Until Element Is Visible    //input[@id='email']    timeout=10s
    Input Text    //input[@id='email']    invalid_user@example
    Input Text    //input[@id='phone']    ${NUMBER}

Leave Email And Phone Blank Fields
    Wait Until Element Is Visible    //input[@id='email']    timeout=10s
    Clear Element Text    //input[@id='email']
    Clear Element Text    //input[@id='phone']

Enter Special Characters In Email And Phone
    Wait Until Element Is Visible    //input[@id='email']    timeout=10s
    Input Text    //input[@id='email']    !@#user@#$%^
    Input Text    //input[@id='phone']    !@#user@#$%^

Click Login
    Click Element    //button[@type='submit']
    Wait Until Element Is Visible    //button[@id='pop-button-container']

Validate Error Message
    [Arguments]    ${expected_message}
    Wait Until Element Is Visible    //div[contains(text(), "${expected_message}")]    timeout=5s

Validate Dropdowns And Checkboxes
    Wait Until Element Is Visible    //select[@id='country']    timeout=10s
    Wait Until Element Is Visible    //input[@type='checkbox']    timeout=10s
    Wait Until Element Is Visible    //input[@type='radio']    timeout=10s
    Click Element    //select[@id='country']
    Click Element    //option[@value='PH']
    Click Element    //input[@type='checkbox']
    Click Element    //input[@type='radio']
