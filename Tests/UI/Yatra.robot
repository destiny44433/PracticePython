*** Settings ***
Documentation    Handling Frames
Library         SeleniumLibrary
Library         ScreenCapLibrary

*** Variables ***



*** Test Cases ***
#Test title
#    open browser                            https://www.yatra.com/                                              chrome
#    maximize browser window
##    wait until element is visible           webklipper-publisher-widget-container-notification-frame        timeout=5s
##    select frame                            webklipper-publisher-widget-container-notification-frame
#    ${XPATH_CLOSE}                          set variable        xpath:${xpath}[${index}]
##    click element                           ${XPATH_CLOSE}
##    take screenshot                         name=Yatra      width=800px                                     format=jpg
##    ${status}=                              run keyword and return status           element should be visible               //span[contains(@class,'icon-flighht')]
##    log to console                          ${status}
##    run keyword if                          '${status}' == 'True'                   click element       //a[@title='Round Trip']
##    ...         ELSE IF                     '${status}' == 'False'                  click element       //a[@title='Multicity']
##    Press keys                              Test        ENTER

Test Google Press Keys
    open browser            https://www.google.com/             chrome
    input text              //input[@name="q"]                  Automation
    press keys              //input[@name="q"]                  ENTER
