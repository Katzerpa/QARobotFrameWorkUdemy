***Settings***
Documentation    Existen en un documento los pasos anuales
...              Esta es mi primera automatización
Library          SeleniumLibrary

***Variables***

${TextBuscar}   casos de pruebas
${Navegador}    Chrome
${URL}   https://www.google.com/

***keywords***
Abril-URL-Navegador
    Open Browser    ${URL}  ${Navegador}
    Wait Until Element Is Visible   xpath=//*[@id="hplogo"]