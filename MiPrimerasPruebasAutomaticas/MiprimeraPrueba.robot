***Settings***
Documentation    Existen en un documento los pasos anuales
...              Esta es mi primera automatización
Library          SeleniumLibrary

***Test Cases***


G001 Busqueda de palabras en Google
    Open Browser    https://www.google.com/   Chrome
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Input Text   xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    casos de pruebas
    Click Element    xpath=//*[@id="hplogo"]
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be     casos de pruebas - Buscar con Google
    Page Should Contain     casos de pruebas
    Close Browser

G002 Presionar botton de Busqueda en google con el selector de palabras en blando
    Open Browser    https://www.google.com/   Chrome
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser

