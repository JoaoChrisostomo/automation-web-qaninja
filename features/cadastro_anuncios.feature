#language: pt

Funcionalidade: Cadastro de Anúncios
  Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
  Quero Cadastrar meus equipamentos
  Para que possa ser disponibilizados para locação de equipamentos

  Contexto: Login
    * Login com "bond@gmail.com" e "123"

  @cadastro_anuncios
  Cenário: Novo equipo
    Dado que acesso o formulario de cadastro de anúncios
      E que eu tenha o seguinte equipamento:
      | thumb     | fender-sb.jpg |
      | nome      | Fender Strato |
      | categoria | Cordas        |
      | preco     | 200           |
    Quando submeto o cadastro desse item
    Então devo ver esse item no meu Dashboard

  Esquema do Cenário: Tentativa de cadastro de anúncios

    Dado que acesso o formulario de cadastro de anúncios
      E que eu tenha o seguinte equipamento:
      | thumb     | <foto>      |
      | nome      | <nome>      |
      | categoria | <categoria> |
      | preco     | <preco>     |
    Quando submeto o cadastro desse item
    Então deve conter  mensagem de alerta: "<saida>"

    Exemplos:
      | foto          | nome              | categoria | preco | saida                                |
      |               | Violao de Nylon   | Cordas    | 150   | Adicione uma foto no seu anúncio!    |
      | clarinete.jpg |                   | Outros    | 250   | Informe a descrição do anúncio!      |
      | mic.jpg       | Microfone Shure   |           | 100   | Informe a categoria                  |
      | trompete.jpg  | Trompete Clássico | Outros    |       | Informe o valor da diária            |
      | conga.jpg     | Gonga             | Outros    | abc   | O valor da diária deve ser numérico! |
      | conga.jpg     | Gonga             | Outros    | 100a  | O valor da diária deve ser numérico! |