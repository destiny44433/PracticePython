*** Settings ***
Library                     SeleniumLibrary

*** Variables ***
${LIVE_NEWS}                //div[@class='firstrow']//a[contains(@href,'live')]
${ALL_NEWS}                 //div[@class='firstrow']//a

*** Keywords ***
Load
    wait until page contains        News

Print Live News
    sleep   3s
    ${News}                 get text        ${LIVE_NEWS}
    log to console          ${News}

Print All News
    ${count}                get element count          ${ALL_NEWS}
    log to console          ${count}

#    FOR     ${i}        IN RANGE        1       ${count}+1
#        ${News1}                get text        (${ALL_NEWS})[${i}]
#        log to console          ${News1}
#    END

    @{NEWS_LIST}=            get webelements        ${ALL_NEWS}
    FOR         ${element}      IN      @{NEWS_LIST}
        log to console          ${element.text}
    END