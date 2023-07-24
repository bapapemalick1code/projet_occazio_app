*** Settings ***
Library           AppiumLibrary

*** Keywords ***
Inscription
    [Arguments]     ${Username}
    Wait Until Element Is Visible    content-desc=Messagerie
    Click Element    content-desc=Messagerie
    Wait Until Element Is Visible    id=cl_conv_occazio_content
    Click Element    id=cl_conv_occazio_content
    Click Element    id=bt_user_name_valid
    Wait Until Element Is Visible    id=et_user_name
    Input Text    id=et_user_name       ${Username}
    Click Element    id=bt_user_name_valid
    Sleep    10
