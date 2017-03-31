#language: pt

Funcionalidade: OcultarFiltroDeTags

Caso não existe nenhuma tag cadastrada no sistema, a caixa de seleção de tags
não será exibida para o usuário na tela de Listagem de Projetos.

Cenário: Ocultar a exibição da seleção de tags
    Dado que estou logado com um usuário de perfil válido.
    E que não possuo tags cadastradas no sistema.
    E que estou na tela de listagem de projetos após realizar uma pesquisa com
    o filtro: status "Em Andamento".
    Quando selecionar uma tag
    Então não devo visualizar a caixa de seleção de tags.
