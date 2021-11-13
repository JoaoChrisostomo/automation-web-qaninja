#language: pt

Funcionalidade: Cadastro de Anúncios
  Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
  Quero Cadastrar meus equipamentos
  Para que possa ser disponibilizados para localção de equipamentos

  @cadastro_anuncios
  Cenário: Novo equipo
    Dado que estou logado como "bond@gmail.com" e "123"
      E que acesso o formulario de cadastro de anúncios
      E que eu tenha o seguinte equipamento:
      | thumb     | fender-sb.jpg |
      | nome      | Fender Strato |
      | category  | Cordas        |
      | preco     | 200           |
    Quando submeto o cadastro desse item
    Então devo ver esse item no meu Dashboard