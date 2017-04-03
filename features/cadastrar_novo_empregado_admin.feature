#language: pt
@cadastrar
Funcionalidade: Cadastrar novo empregado usando perfil admin
 Eu como admin
 Quero estar logado no site ORANGEHRM
 Para cadastrar novo empregado

 Cenário: Cadastrar novo empregado utilizando perfil admin
  Dado que esteja logado no site ORANGEHRM com perfil admin
  Quando cadastrar novo funcionário 
  Então sistema apresenta mensagem "Successfully Saved"
