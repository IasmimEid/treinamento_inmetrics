#language: pt
@editar
Funcionalidade: Editar empregado usando perfil admin
 Eu como admin
 Quero estar logado no site ORANGEHRM
 Para editar empregado existente

 Cenário: Editar empregado existente utilizando perfil admin
  Dado que possua perfil ADMIN e esteja logado no site ORANGEHRM
  Quando editar empregado existente 
  Então sistema exibe mensagem "Successfully Saved"