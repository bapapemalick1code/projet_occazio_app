*** Settings ***
Resource        ../../Data/data.robot
Resource    Component/navigate.robot
Resource    Component/messagerie.robot
Resource        ../Base/base.robot

*** Keywords ***
OnboardingApp
    Navigate.Onboarding
    Close Application






