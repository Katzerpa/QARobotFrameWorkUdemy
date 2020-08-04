*** Settings ***
Library     String

*** Variables ***

${browser}      Chrome
${homepage}      http://www.winstoncastillo.com/udemy/

*** Keyword ***
Open Homepage
    Open Browser    ${homepage}     ${browser}
