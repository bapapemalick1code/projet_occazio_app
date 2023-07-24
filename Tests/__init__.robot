*** Settings ***
Resource        ../Resources/Base/base.robot

#Test Setup       Run Keywords      base.Start Appium    AND    base.Launch App
#Test Setup       Run Keyword         Launch App Browserstack In Parallel
#Test Setup       Run Keyword          Launch App Browserstack
#Test Setup       Run Keyword         Launch App

Test Setup
...     Run Keyword If     '${env}'=='LOCAL'                     Launch App
...     ELSE IF            '${env}'=='BROWSERSTACK'              Launch App Browserstack
...     ELSE IF            '${env}'=='BROWSERSTACK_PARALLEL'     Launch App Browserstack In Parallel
...     ELSE               Log     Launch TestSetup Failed


#Test Teardown    Run Keywords        Close App   AND   Stop Appium
Test Teardown    Close Application
#Test Teardown    Stop Appium
