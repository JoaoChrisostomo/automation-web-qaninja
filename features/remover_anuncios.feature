#language: pt

Funcionalidade: Remover anúncios
      Eu como anúnciante que possui um equipamento indesejadores
  Quero poder remover esse anúncio
  Para que eu possa manter o meu Dashboard atualizado

  Contexto: Login
    * Login com "spider@gmail.com" e "1234"

  Cenário: Remover anúncios

    Dado que eu tenha um anúncio indesejado:
      | thumb     | telecaster.jpg |
      | nome      | Telecaster     |
      | categoria | Cordas         |
      | preco     | 200            |
    Quando eu solicito a exclusão desse item
      E confirmo a exclusão
    Então não devo ver esse item no meu Dashboard

  Cenário: Desistir da exclusão
    Dado que eu tenha um anúncio indesejado:
      | thumb     | conga.jpg |
      | nome      | Conga     |
      | categoria | Outros    |
      | preco     | 100       |
    Quando eu solicito a exclusão desse item
      Mas não confirmo a solicitação
    Então esse item deve permanecer no meu Dashboard