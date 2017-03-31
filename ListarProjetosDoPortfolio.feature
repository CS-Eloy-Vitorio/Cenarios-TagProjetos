#language: pt

Funcionalidade: ListarProjetosDoPortfolio

Para ter acesso a listagem de projetos do portfólio, o usuário deve estar logado
com os perfis válidos: Governança de TI ou CIO.
Permite que a consulta de projetos possa ser realizada através de filtros, tags
ou então a combinação dos dois.
O usuário poderá excluir uma tag selecionada no filtro através de um clique
sobre a mesma ou então excluir todas através de um botão específico e esta acão
não terá efeito sobre os filtros comuns, a consulta sempre será refeita com os
filtros atualizados.
Caso não existe nenhuma tag cadastrada no sistema, a caixa de seleção de tags
não será exibida.

Contexto:
 Dado que estou logado com um usuário de perfil válido.
 E possuo tags cadastradas vinculadas a projetos.

Cenário: Posso visualizar a lista de tags cadastradas
  Dado que estou na tela de listagem de projetos após realizar uma pesquisa
  com o filtro Célula "Projetos".
  Quando selecionar uma tag da lista de tags do lado direito da tela.
  Então devo visualizar a lista de tags cadastradas no sistema ordenadas
  alfabeticamente.

Cenário: Selecionar projetos a partir de uma tag
  Dado que estou na tela de listagem de projetos após realizar uma pesquisa
  com o filtro Célula "Produto".
  Quando selecionar a tag "Web".
  Então devo visualizar todos os projetos que atendam aos critérios: Célula
  "Produto", tag "Web".

Cenário: Excluir a tag utilizada na última consulta de projetos
  Dado que estou na tela de listagem de projetos após realizar uma pesquisa
  com a combinação: Abordagem "Ágil", tag "Android".
  Quando clicar uma vez na tag "Android".
  Então devo visualizar todos os projetos que atendam ao critério: Abordagem
  "Ágil" independente da associação da tag "Android".

Cenário: Selecionar projetos a partir de um conjunto de tags associadas
  Dado que estou na tela de listagem de projetos após realizar uma pesquisa
  com o filtro Porte do Projeto "G".
  Quando selecionar as tags: "Mobile", "Web", "Cloud".
  Então devo visualizar todos os projetos que atendam aos critérios
  | G      |
  | Mobile |
  | Web    |
  | Cloud  |

Cenário: Excluir tags dentre as utilizadas na última consulta de projetos
  Dado que estou na tela de listagem de projetos após realizar uma pesquisa
  com o conjunto de tags: "Mobile", "Web", "Cloud".
  Quando clicar uma vez nas tags: "Mobile", "Web".
  Então devo visualizar os projetos que contém a tag "Cloud" associada.

Cenário: Adicionar tags aos filtros realizados na consulta anterior
  Dado que estou na tela de listagem de projetos após realizar uma pesquisa
  com os filtros Status: "Em Andamento", Abordagem: "Ágil", Célula:
  "Produto".
  Quando adicionar as tags: "Mobile", "Web".
  Então devo visualizar todos os projetos associados ao conjunto filtros mais
  tags que foram adicionadas.

Cenário: Adicionar filtros às tags utilizadas na consulta anterior
   Dado que estou na tela de listagem de projetos após realizar uma pesquisa
   com as tags: "Mobile" e "Web".
   Quando adicionar os filtros Status: "Finalizado", Porte do projeto: "G".
   Então devo visualizar todos os projetos associados ao conjunto tags mais
   os filtros que foram adicionadas.

Cenário: Limpar seleção de tags após uma consulta
   Dado que estou na tela listagem de projetos após realizar uma pesquisa
   com as tags: "Mobile", "Web", "Cloud".
   Quando limpar a seleção de tag.
   Então devo visualizar todos os projetos independente das tags removidas do
   filtro.

Cenário: Limpar seleção de tags após uma consulta com filtros combinados com tag
   Dado que estou na tela de listagem de projetos após realizar uma pesquisa com
   os filtros: status "Finalizado", porte do projeto "M", tag "Mobile", tag
   "Web", tag "Cloud".
   Quando limpar a seleção de tag.
   Então devo visualizar todos os projetos que atendam aos filtros: status
   "Finalizado", porte do projeto "M".

Cenário: Visualizar tags associadas aos projetos na tela de listagem
    Dado que estou na tela de listagem de projetos após realizar uma pesquisa com
    os filtros: status "Em Andamento", porte do projeto "G", tag "Mobile", tag
    "Web".
    Quando visualizar a lista de projetos
    Então devo visualizar as tags "Mobile", "Web" do lado esquerdo do nome do
    projeto para todos os projetos listados.

Cenário: Visualizar tags associadas aos projetos mesmo que estas não estejam no filtro
    Dado que estou na tela de listagem de projetos após realizar uma pesquisa com
    os filtros: semáforo "verde", abordagem "Ágil", tag "Mobile", tab "Web", tag
    "Cloud".
    Quando limpar a seleção de tags.
    Então devo continuar visualizando as tags "Mobile", "Web", "Cloud" do lado
    esquerdo do nome do projeto para todos os projetos listados que possuem
    estas tags associadas.
