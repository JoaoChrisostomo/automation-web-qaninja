#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com  "juca@gmail.com" e "1234"
        Então sou redirecionado para o Dashboard

    @tentar_logar
    Cenario: Senha incorreta

        Dado que acesso a página principal
        Quando submeto minhas credenciais com  "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input      | senha_input | mensagem_output                  |
            | juca@gmail.com   | 12345       | Usuário e/ou senha inválidos.    |
            | jucas@gmail.com  | 1234        | Usuário e/ou senha inválidos.    |
            | joe$uhugmail.com | jp123456    | Oops. Informe um email válido!   |
            |                  | jp123456    | Oops. Informe um email válido!   |
            | joe@gmail.com    |             | Oops. Informe sua senha secreta! |
