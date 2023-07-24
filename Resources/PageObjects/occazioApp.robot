*** Settings ***
Resource        ../../Data/data.robot
Resource    Component/Navigate/navigate.robot
Resource    Component/Messagerie/messagerie.robot
Resource        ../Base/base.robot

*** Keywords ***
OnboardingApp
    Navigate.Onboarding
    Close Application






