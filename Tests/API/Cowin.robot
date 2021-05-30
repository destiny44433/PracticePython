*** Settings ***
Documentation    Suite description
Library             RequestsLibrary

*** Variables ***
${PINCODE}          411057

*** Test Cases ***
Finding Slots
    &{Header}           Create Dictionary           Accept-Language=hi_IN       User-Agent=PostmanRuntime/7.28.0
    create session      Cowin       https://cdn-api.co-vin.in
    ${response}         get request         Cowin       /api/v2/appointment/sessions/public/findByPin?pincode=${PINCODE}&date=24-05-2021        ${Header}
    log to console      ${response.content}

