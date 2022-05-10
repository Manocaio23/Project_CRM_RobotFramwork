*** Settings ***
Documentation  Funcionalidade do projeto

Resource  ../../Resources//PageObjects/LoginPage.robot
Resource  ../../Resources//PageObjects/FuncionarioPage.robot
Resource  ../../Resources//PageObjects/UsuarioPage.robot
Resource  ../../Resources//Start_Stop.robot


Test Setup   Start_Stop.Start Test
Test Teardown   Start_Stop.Finish TestCase
*** Variables ***


*** Test Cases ***

Gerenciamento de usuário - Criar Fundionário
    [Documentation]  Fazer o cadastro de um funcionário
    [tags]  CY001
    
    Dado que esteja logado no sistema 
    Quando navego até adicionar funcinario
    E preencho nome e sobrenome
    Quando insiro uma foto
    E clico no check para abrir infomacoes
    E preencho nome de usuario com “mano.caio“
    E senha
    E repetir senha
    Quando clico em salvar
    Então devo ver a mnesagem de “Personal Details“


Gerenciamento de usuário - Criar Usuário
    [Documentation]  Fazer o cadastro de um usuario
    [tags]  CY002
    Dado que esteja logado no sistema 
    Quando navego ate gerenciamento de usuario 
    E clico em adicionar 
    Quando preencho a função como “administrador“
    E nome do funcionario como “Mano Caio“ 
    E nome do usuario como
    E preencho senha
    E congirmar senha
    Quando clico em salvar para adicionar
    