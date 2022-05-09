*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#trocar no local que mouda de site
${site}  test
&{url}  qa=http://ambienteqa.com  prod=http://ambienteproducao.com  test=https://opensource-demo.orangehrmlive.com/
${browser}   chrome
*** Keywords ***
Start Test
    Open Browser  ${url.${site}}  ${browser}
    Maximize Browser Window
    Sleep   4s

Finish TestCase
    Close Browser