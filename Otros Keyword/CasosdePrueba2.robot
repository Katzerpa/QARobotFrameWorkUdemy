*** Settings ***
Library     String
Resource    Recurso.robot
Library     SeleniumLibrary
*** Variables ***
@{items}     1       2       3       4       5       6       7

*** Keyword ***
Abrir Navegador
    Open Browser    ${Url}    ${Navegador}

*** Comments ***

AP001 Verificar que la previsualización está funcionando correctamente a través del icono del ojo
    Abrir Navegador
    Set Focus To Element       css=#home-page-tabs > li.active > a
    Set Window Size         1100        900
    Set Selenium Speed      0.6 seconds
    FOR    ${cadaItem}     IN      @{items}
    Set Focus To Element           css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
    ${objetoTitulo}=        Get Text        css=#homefeatured > li:nth-child(${cadaItem}) > div > div.right-block > h5 > a
    Click Element          css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
    Wait Until Element is Visible       css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
    Select Frame            css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
    Wait Until Element is Visible       css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1
    Element Text Should Be      css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1             ${objetoTitulo}
    Unselect Frame
    Click Element       css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a
    END
    Close Browser

*** Test Case ***


AP002 Verificar que la previsualización está funcionando correctamente a través del texto de preview
    Abrir Navegador
    Set Focus To Element       css=#home-page-tabs > li.active > a
    Set Window Size         1270        900
    Set Selenium Speed      0.8 seconds
    FOR    ${cadaItem}     IN      @{items}
    Element Should Not Be Visible           css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
    ${objetoTitulo}=        Get Text        css=#homefeatured > li:nth-child(${cadaItem}) > div > div.right-block > h5 > a
    Mouse Over          css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > a.product_img_link > img
    Wait Until Keyword Succeeds        2 min        3 sec       Click Element          css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > a.quick-view > span
    Wait Until Element is Visible       css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
    Select Frame            css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
    Wait Until Element is Visible       css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1
    Element Text Should Be      css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1             ${objetoTitulo}
    Unselect Frame
    Click Element       css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a
    END
    Close Browser