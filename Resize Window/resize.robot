*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
001 Abrir pagina y cambiar tamano
    Open Browser    https://www.mobilepractice.io/en/       chrome
    Set Window Size      767       600
    Element Should Be Visible    xpath=/html/body/header/div/div/div[2]/div
    Set Window Size      768       600
    Element Should Not Be Visible    xpath=/html/body/header/div/div/div[2]/div
    Close Browser
