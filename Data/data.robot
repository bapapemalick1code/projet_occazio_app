*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/App/Android/occazio.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10.0   #14
${ANDROID_DEVICENAME}   Pixel_3a_API_29_android_10
#${ANDROID_DEVICENAME}   Pixel 3 XL API 34
#${Hub}          http://127.0.0.1:${AppiumPort}/wd/hub   #pour appium 1.*
${Hub}          http://127.0.0.1:${AppiumPort}           #pour appium 2.0
${AppiumPort}    4723

########### BROWSERSTACK ########
${ANDROID_APP_BROWSERSTACK}         bs://1f2bcb75f30dd52d217d67dcc207b11635996200
${ANDROID_DEVICENAME_BROWSERSTACK}  Samsung Galaxy S22 Plus
${ANDROID_PLATFORM_VERSION_BROWSERSTACK}   12.0
${BROWSERSTACK_USERNAME}    papemalickba_a4GPus
${BROWSERSTACK_ACCESS_KEY}    8t3uuUtg8WV89rsT8Fxt
${REMOTE_URL}    http://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub



