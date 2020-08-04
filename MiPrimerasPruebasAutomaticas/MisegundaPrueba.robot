***Settings***
Documentation    Existen en un documento los pasos anuales
...              Esta es mi primera automatización
Library          SeleniumLibrary

***Variables***

${TextBuscar}   casos de pruebas
${Navegador}    Chrome
${URL}   https://www.google.com/

***Test Cases***


G001 Busqueda de palabras en Google
    Open Browser    ${URL}  ${Navegador}
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Input Text   xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    ${TextBuscar}
    Click Element    xpath=//*[@id="hplogo"]
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be     ${TextBuscar} - Buscar con Google
    Page Should Contain     ${TextBuscar}
    Close Browser

G002 Presionar botton de Busqueda en google con el selector de palabras en blando
    Open Browser    ${URL}  ${Navegador}
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser

