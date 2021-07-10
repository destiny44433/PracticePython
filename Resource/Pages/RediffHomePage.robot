*** Settings ***
Library                                 SeleniumLibrary
Resource                                Variables.robot

*** Keywords ***
Load
    wait until element is visible       ${NEWS_XPATH}            timeout=15s


Click on News
    click element                       ${NEWS_XPATH}
