*** Settings ***
Resource                ../../Resource/StepDefinitionFile.robot

*** Variables ***
${URL}                  https://amazon.in
${BROWSER}              chrome


*** Test Cases ***
Testing on Amazon.com
    I navigate to                   ${URL}                  ${BROWSER}
    I search for                    Toys
    User creates a job