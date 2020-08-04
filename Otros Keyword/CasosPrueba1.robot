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
    Mouse Down On Image  xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img
    Set Focus To Element    xpath=//*[@id="homefeatured"]/li[1]/div[1]/div[1]/div[1]/a[2]
    Click Link    xpath=//*[@id="homefeatured"]/li[1]/div[1]/div[1]/div[1]/a[2]
    Title Should Be     My Store
*** Test Cases ***
AP001 Verificar que la previsualización está funcionando correctamente a través del icono del ojo
    Abrir Navegador
    Title Should Be     My Store
    Set Focus to Element    xpath=//*[@id="home-page-tabs"]/li[1]/a
    Click Link     xpath=//*[@id="home-page-tabs"]/li[1]/a
    wait Until Element Is Visible   xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/div[1]/a/i
    Set Window Size      1278       800
    Seleccionar Ventana
    Wait Until Element Contains  xpath=//*[@id="product"]/div/div/div[2]/h1   20
    Mouse Over   xpath=//*[@id="product"]/div/div/div[2]/h1