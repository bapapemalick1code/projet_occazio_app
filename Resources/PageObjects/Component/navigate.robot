*** Settings ***
Library     AppiumLibrary

*** Variables ***
#Onboarding
${id_btn_demarrer}=  id=bt_start_showcase
${id_indicator_swipe}=  id=indicator_showcase
${id_btn_valider}=  "id=bt_stop_showcase"
${id_btn_allow_notif}=  "id=v_seekbar_overlay"
${id_titre_popup}=  "id=tv_why_user_title"
${id_skip_popup}=  "id=tv_why_skip"
${id_popup_allow_notif}=  "id=com.android.permissioncontroller:id/grant_dialog"
${id_popup_allow_notif_true}=  "id=com.android.permissioncontroller:id/permission_allow_button"
${id_popup_allow_notif_false}=  "id=permission_deny_button"
#switch_mode
${id_btn_switch_mode}=  "bt_switch_mode"
${id_mode_acheteur}=  "id=tv_mode_buyer"
${id_mode_vendeur}=  "id=tv_mode_seller"
${id_titre_acheteur}=  "id=tv_buyer_tuto_title"
${id_titre_vendeur}=  "id=tv_seller_tuto_title"

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
    #gerer la partie où un popup de permission apparait selon les devices
    ${popup_visible}=    Run Keyword And Return Status     Wait Until Element Is Visible   ${id_popup_allow_notif_true}  3
    Run Keyword If    ${popup_visible}   Click Element    ${id_popup_allow_notif_true}
    Wait Until Element Is Visible    ${id_titre_popup}
    Wait Until Element Is Visible    ${id_skip_popup}
    Click Element   ${id_skip_popup}

