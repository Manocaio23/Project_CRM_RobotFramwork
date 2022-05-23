*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MENUPIM}             id:menu_pim_viewPimModule
${MENUfUNCIONARIO}     id:menu_pim_addEmployee
${NOME}                id:firstName
${SOBRENOME}           id:lastName
${UPLOAD}              id:photofile
${CHECK}               id:chkLogin
${USARNAMEFUNCIONARIO}    id:user_name
${PASSWORDFUNCIONARIO}    id:user_password
${PASSWORDFUNCIONARIOCONFIRM}    id:re_password
${BTNSAVEFUNCIONARIO}    id:btnSave
${RESULTADOFUNCIONARIO}  =  Personal Details




*** Keywords ***
Quando navego até adicionar funcinario
    Mouse Over     ${MENUPIM} 
    Sleep   2s
    Click Element  ${MENUfUNCIONARIO}
    Sleep   2s

E preencho nome e sobrenome
    Input Text     ${NOME}    Mano
    Sleep   1s
    Input Text     ${SOBRENOME}     Caio
    Sleep   1s
    

Quando insiro uma foto
    Choose File       ${UPLOAD}   /Users/manocaio/Downloads/robo.jpeg
    Sleep   1s
E clico no check para abrir infomacoes
    Click Element   ${CHECK}   
    Sleep   1s

E preencho nome de usuario com “mano.caio“
    Input Text     ${USARNAMEFUNCIONARIO}    mano.caioqa
    Sleep   1s

E senha
    Input Text     ${PASSWORDFUNCIONARIO}     mano.caio@2S
    Sleep   1s
E repetir senha
    Input Text      ${PASSWORDFUNCIONARIOCONFIRM}     mano.caio@2S
    Sleep   1s
Quando clico em salvar
    Click Button     ${BTNSAVEFUNCIONARIO}  
    Sleep   4s

Então devo ver a mnesagem de “Personal Details“
    Page Should Contain    Personal Details 
    Sleep   1s
