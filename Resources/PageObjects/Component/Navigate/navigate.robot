*** Settings ***
Library     AppiumLibrary
Variables   locators_navigate.py

*** Keywords ***
Onboarding
    Wait Until Element Is Visible       ${id_btn_demarrer}     15s
    Click Element    ${id_btn_demarrer}
    Wait Until Element Is Visible    ${id_indicator_swipe}
    ${buttons}=    Run Keyword And Return Status    Page Should Not Contain Element    ${id_btn_valider}
    FOR    ${index}  IN RANGE    4
           Run Keyword If    ${buttons}    Swipe By Percent    90    50    10    50    200
           ...               ELSE             Exit For Loop
    END
    Click Element    ${id_btn_allow_notif}
    Click Element    ${id_btn_valider}
    #gerer la partie où un popup de permission apparait selon les devices     #Element Should Be Visible
    ${popup_visible}=    Run Keyword And Return Status     Wait Until Element Is Visible   ${id_popup_allow_notif_true}  3
    Run Keyword If    ${popup_visible}   Click Element    ${id_popup_allow_notif_true}
    Wait Until Element Is Visible    ${id_titre_popup}
    Wait Until Element Is Visible    ${id_skip_popup}
    Click Element   ${id_skip_popup}

