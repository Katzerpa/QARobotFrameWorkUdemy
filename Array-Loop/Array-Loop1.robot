***Setting***
Library     String
Library     SeleniumLibrary

***Variables***
${browser}    Chrome
${URL}     automationpractice.com/index.php
${scheme}   http
${prodscheme}   https
${testUrl}   ${scheme}://${URL}
${prodUrl}   ${prodscheme}://${URL}

***Keyword***
Open homepage
    Open browser    ${testUrl}    ${browser}

***Test Cases***

C001 click sobre seleccion de prendas
    Open homepage
    set global Variable   @{NombredeContenedores}   //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
    :FOR    ${nombredecontenedor}   IN      @{NombredeContenedores}
    \   click Element   xpath= ${nombredecontenedor}
    \    Wait Until Element Is Visible   xpath=//*[@id="bigpic"]
    \   click Element   xpath=//*[@id="header_logo"]/a/img
    Close Browser