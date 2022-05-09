*** Settings ***
Documentation  Funcionalidade do projeto
Resource  ../../Resources//PageObjects/LoginPage.robot
Resource  ../../Resources//PageObjects/FuncionarioPage.robot
Resource  ../../Resources//Start_Stop.robot


Test Setup   Start_Stop.Start Test
Test Teardown   Start_Stop.Finish TestCase
*** Variables ***


*** Test Cases ***

Fazer login tela inicial normalmente
    [Documentation]  Vai fazer o login padrão 
    [tags]  Functional
    
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


