*** Settings ***
Library    SeleniumLibrary
Resource   recursos.robot


*** Test Cases ***

C001 Ir al blog de Winston Castillo
    Open Homepage
    Title Should Be     Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link      xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element Is Visible     xpath=//*[@id="page-header"]/div[1]/div/div/div
    Title Should Be     Winston Castillo – Un sitio para comunicarse
    Close Browser
C002 Abrir Ventana Modal
    Open Homepage
    Title Should Be     Hola Mundo!
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link     xpath=/html/body/div[1]/div/div[2]/a[2]
    Title Should Be     Hola Mundo!
    Wait Until Element Is Visible     xpath=//*[@id="exampleModal"]/div/div/div[1]
    Close Browser
