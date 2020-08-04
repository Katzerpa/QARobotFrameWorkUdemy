*** Settings ***
Library     String
Resource    Recurso.robot
Library     SeleniumLibrary
*** Variables ***
@{item}     1       2       3       4       5       6       7

*** Keyword ***
Abrir Navegador
    Open Browser    ${Url}    ${Navegador}

*** Test Case ***

AP001 Verificar que la previsualización está funcionando correctamente a través del icono del ojo
    Abrir Navegador
    Set Focus to Element    xpath=//*[@id="home-page-tabs"]/li[1]/a
    Set Window Size      1000       1000
    Set Selenium speed      10 seconds
    FOR    ${Items}     IN    @{item}
    Set Focus To Element    xpath=//*[@id="homefeatured"]/li[${Items}]/div[1]/div[1]/div[1]/div[1]/a[1]/i[1]
    Set Selenium speed      20
    Wait Until Element Is Visible       ccs=#homefeatured > li:nth-child(${Items}) > div > div.right-block > h5 > a > font > font
    ${ObjetoTitulo}=     Get Text    ccs=#homefeatured > li:nth-child(${Items}) > div > div.right-block > h5 > a > font > font
    Click Element    xpath=//*[@id="homefeatured"]/li[${Items}]/div[1]/div[1]/div[1]/div[1]/a[1]/i[1]
    Wait Until Element Is Visible   ccs=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1 > font > font
    Element Text Should Be     ccs=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1 > font > font       ${ObjetoTitulo}
    Click Element    ccs=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a
    END
    close Browser

