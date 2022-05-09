*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SearchTextBox}   id:txtUsername
${Senha}  txtPassword
${SearchButton}   btnLogin


*** Keywords ***

Dado que esteja logado no sistema 
   #Arguments]    ${search_text}
    Input Text     ${SearchTextBox}   Admin
    Input Text     ${Senha}   admin123
    Press Keys     ${SearchButton}   [Return]
    Sleep   2s