*** Settings ***
Library   SeleniumLibrary
Library   FakerLibrary    locale=pt_BR


*** Variables ***

${MENU_ADMIN}  id:menu_admin_viewAdminModule
${SUBMENU_ADM}  id:menu_admin_UserManagement
${MENU_USER}   id:menu_admin_viewSystemUsers
${BTN_ADD}    id:btnAdd
${SELECT_USERROLE}    id:systemUser_userType
${FUNCIONARIO_USER}    id:systemUser_employeeName_empName
${INPUT_USER}    id:systemUser_userName
${USER_PASSOWRD}    id:systemUser_password
${USER_CONFIRMPASS}    id:systemUser_confirmPassword
${BTN_SAVE}    id:btnSave

*** Keywords ***

Quando navego ate gerenciamento de usuario 
    Mouse Over     ${MENU_ADMIN}
    Sleep   1s
    Mouse Over    ${SUBMENU_ADM} 
    Sleep   1s
    Click Element  ${MENU_USER} 
    Sleep   1s
E clico em adicionar 
    Click Button   ${BTN_ADD}
    Sleep   1s

Quando preencho a função como “administrador“
    Select From List By Value   ${SELECT_USERROLE}   1
    Sleep   1s

E nome do funcionario como “Mano Caio“ 
  Input Text   ${FUNCIONARIO_USER}    mano.caioqa2
  Sleep   1s
E nome do usuario como 
  Input Text    ${INPUT_USER}    funcionario
  Sleep   1s
    
E preencho senha 
    Input Text     ${USER_PASSOWRD}    mano.caioqa2
     Sleep   1s
E congirmar senha
    Input Text     ${USER_CONFIRMPASS}    mano.caioqa2
     Sleep   1s
Quando clico em salvar para adicionar
    Click Button  ${BTN_SAVE} 
    Sleep   3s
Então devo ver a mensagem de sucesso
    
