*** Settings ***
Library                             SeleniumLibrary
Resource                            ../Resource/Pages/Variables.robot
Resource                            ../Resource/Pages/RediffHomePage.robot
Resource                            ../Resource/Pages/RediffNewsPage.robot
Library                             ../Library/CommonUtility.py
Library                             OperatingSystem

*** Keywords ***
I navigate to "${URL1}"
    open browser                    ${URL1}                 chrome
    maximize browser window
    capture page screenshot

I search for
    [Arguments]                     ${ITEM}
    input text                      ${SearchTxtboxXpath}    ${ITEM}

I click on News Section
    RediffHomePage.Load
    RediffHomePage.Click on News

I checked for Live news
    RediffNewsPage.Load
    RediffNewsPage.Print Live News

I Print all news
    RediffNewsPage.Print All News

User Navigates to "${URL}"
    open browser        ${URL}          chrome
    maximize browser window

User search for Value
    ${Status}       CommonUtility.Read_Excel_File           Saurabh         ${CURDIR}/../Data/InputData.xls
    input text      //input[@id='twotabsearchtextbox']      ${Status}
