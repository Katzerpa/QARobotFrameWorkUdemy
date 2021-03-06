*** Settings ***
Library     SeleniumLibrary
Library     String

***Variable***
${Navegador}    Chrome
${Url}      http://automationpractice.com/index.php


*** Keyword ***
Abrir Navegador
    Open Browser    ${Url}     ${Navegador}
Seleccionar Ventana
    Set Focus To Element    xpath=//*[@id="homefeatured"]/li[1]/div[1]/div[1]/div[1]/div[1]/a[1]/i[1]
    Click Element    xpath=//*[@id="homefeatured"]/li[1]/div[1]/div[1]/div[1]/div[1]/a[1]/i[1]
    Title Should Be     My Store
*** Test Cases ***
AP001 Verificar que la previsualización está funcionando correctamente a través del icono del ojo
    Abrir Navegador
    Title Should Be     My Store
    Set Focus to Element    xpath=//*[@id="home-page-tabs"]/li[1]/a
    Click Link     xpath=//*[@id="home-page-tabs"]/li[1]/a
    Seleccionar Ventana
    Wait Until Element Is Visible     xpath=//*[@id="product"]/div/div/div[1]/comment()[2]