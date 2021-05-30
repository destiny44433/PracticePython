*** Settings ***
Library             RequestsLibrary
Documentation       API for slot checking

*** Test Cases ***
Book Slot
    &{HEADER}           create dictionary       Accept-Language=hi_IN           User-Agent=PostmanRuntime/7.28.0
    create session      Test        https://cdn-api.co-vin.in           disable_warnings=1
    ${response}         get request         Test        url=/api/v2/appointment/sessions/public/findByPin?  params=pincode=411057       params=date=31-05-2021
    log to console      ${response.content}

*** Keywords ***
