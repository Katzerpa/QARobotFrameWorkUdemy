***setting***
library    SeleniumLibrary

***variable***

${browser}    Chrome
${URL}     http://automationpractice.com/index.php
${seleccion}    women

***keyword***
Select women opcion
    Click Element   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
    Title Should Be     Women - My Store

***Test Cases***

C01 Caso con condicionales
    Open Browser    ${URL}   ${browser}
    Wait Until Element Is Visible   xpath=//*[@id="header_logo"]/a[1]/img[1]
    run keyword if   '${seleccion}' == 'women'   Select women opcion
    Close Browser