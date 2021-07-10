*** Settings ***
Library             RequestsLibrary
Library             String
Library             OperatingSystem

*** Test Cases ***
Test title
    create session      Test        https://reqres.in
    ${resp}=            get request     Test        /api/users?page=2
    ${resp_body}=       convert to string   ${resp.content}
    log to console      ${resp_body}

Test title1
    create session      Test        https://reqres.in
    ${json}=            get file        Tests/UI/Test.json
    ${resp}=            post request     Test        /api/users?page=2      data=${json}
    ${resp_body}=       convert to string   ${resp.content}
    log to console      ${resp_body}

