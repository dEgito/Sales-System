programa {
  funcao inicio() {
    Home()
  }
  cadeia userRegister
  cadeia passwordRegister
  cadeia user
  cadeia password

  logico loggedUser

  funcao Home() {
    inteiro option

    escreva("Bem-vindo ao sistema de Compras\n")
    escreva("Selecione uma das op��es abaixo:\n\n")
    escreva("1 - Login\n")
    escreva("2 - Cadastro\n")
    leia(option)
    escreva("\n")

    escolha (option) {
      caso 1:
        limpa()
        Login(user, password)
      pare

      caso 2:
        limpa()
        RegisterUser(userRegister, passwordRegister)
      pare
      caso contrario: 
        escreva("Op��o inv�lida, tente novamente!\n" )
        escreva("Encerrando programa...\n\n")
        Home()
        limpa()
      pare
    }
  }

  funcao Login(user, password) {
    escreva("1 - Login \n\n")

    escreva("Por favor, digite seu nome de usu�rio (sem caracteres especiais): \n")
    leia(user)
    escreva("\nDigite sua senha: \n")
    leia(password)
    limpa()

    ValidateUser()
  }

  funcao ValidateUser(user, userRegister, password, passwordRegister, loggedUser) {
    caracter option

    se (user === userRegister e password === passwordRegister) {
      loggedUser = verdadeiro
      escreva("Login feio com sucesso!\n")
      escreva("Digite qualquer tecla para acessar o sistema!\n")
      leia(option)
      System(user)
      limpa()

    } senao {
      loggedUser = falso
      escreva("Dados incorretos, tente novamente. \n\n")
      Login(user, password)
    }
  }

  funcao RegisterUser(userRegister, passwordRegister) {
    caracter option

    escreva("2 - Cadastro\n\n")

    escreva("Digite um nome de usu�rio (sem caracteres especiais e acentos):\n")
    leia(userRegister)
    escreva("Digite uma senha de 4 a 8 d�gitos): \n")
    leia(passwordRegister)
    escreva("\nUsu�rio ", userRegister, " cadastrado com sucesso.\n")
    escreva("Digite qualquer tecla para ser redirecionado para o login.")

    leia(option)
    limpa()
    Login(userRegister, passwordRegister)
  }

  funcao System(loggedUser) {
    escreva("Seja bem-vindo, ", user, " !\n\n")
  }
}
