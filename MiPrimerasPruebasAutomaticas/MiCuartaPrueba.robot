***Settings***
Resource    RECURSOS.robot



***Test Cases***

G001 Busqueda de palabras en Google
    Abril-URL-Navegador
    Input Text   xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    ${TextBuscar}
    Click Element    xpath=//*[@id="hplogo"]
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be     ${TextBuscar} - Buscar con Google
    Page Should Contain     ${TextBuscar}
    Close Browser

G002 Presionar botton de Busqueda en google con el selector de palabras en blando
    Abril-URL-Navegador
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be     Google
    Close Browser

