#language: pt

Funcionalidade: ControlarAcessoPorPerfil

Para ter acesso a listagem de projetos do portfólio, o usuário deve estar logado
com os perfis válidos: Governança de TI ou CIO.
Caso esteja logado com um perfil inválido, a funcionalidade de Listar Projetos
do Portfólio não deve aparecer.

Cenário: Restringir acesso a consulta de projetos para perfil inválido
    Dado que estou logado com um usuário de perfil inválido.
    E que não estou na tela de filtros para consulta de projetos.
    Quando selecionar a tela de filtros para consulta de projetos.
    Então não devo visualizar esta funcionalidade.
