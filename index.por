programa {
  funcao inicio() {
    Home()
  }
  cadeia userRegister
  cadeia passwordRegister
  cadeia user
  cadeia password
  cadeia message

  logico loggedUser

  funcao Home() {
    inteiro option

    escreva("Bem-vindo ao sistema de Compras\n")
    escreva("Selecione uma das opções abaixo:\n\n")
    escreva("1 - Cadastro\n")
    escreva("2 - Login\n")
    escreva("3 - Acessar sistema\n")
    leia(option)
    escreva("\n")

    escolha (option) {
      caso 1:
        limpa()
        RegisterUser(userRegister, passwordRegister)
      pare

      caso 2:
        limpa()
        Login(user, password)
      pare

      caso 3:
        limpa()
        ValidateSystem(loggedUser)
      pare

      caso contrario: 
        escreva("Opção inválida, tente novamente!\n" )
        escreva("Encerrando programa...\n\n")
        Home()
        limpa()
      pare
    }
  }

  funcao RegisterUser(userRegister, passwordRegister, message) {
    caracter option
    message = ""

    StyleSpacer()

    escreva("1 - Cadastro\n\n")

    escreva("Digite um nome de usuário (sem caracteres especiais):\n")
    leia(userRegister)
    escreva("Digite uma senha (sem caracteres especiais): \n")
    leia(passwordRegister)
    escreva("\nUsuário ", userRegister, " cadastrado com sucesso.\n")
    escreva("Digite qualquer tecla para ser redirecionado para o login.")

    leia(option)
    limpa()
    Login(userRegister, passwordRegister)
  }

  funcao Login(user, password, message) {
    StyleSpacer()

    escreva("2 - Login \n\n")

    escreva("Por favor, digite seu nome de usuário (sem caracteres especiais): \n")
    leia(user)
    escreva("\nDigite sua senha: \n")
    leia(password)
    limpa()

    ValidateUser()
  }

  funcao ValidateUser(user, userRegister, password, passwordRegister, loggedUser, message) {
    message = ""
    caracter option

    se (user === userRegister e password === passwordRegister) {
      loggedUser = verdadeiro
      escreva("Login feio com sucesso!\n")
      escreva("Digite qualquer tecla para acessar o sistema!\n")
      leia(option)

    } senao {
      loggedUser = falso
      escreva("Dados incorretos, tente novamente. \n")
      Login(user, password)
    }
    ValidateSystem(loggedUser)
  }

  funcao ValidateSystem(loggedUser) {
    caracter option

    se (loggedUser == verdadeiro) {
      SalesSystem(user)
    } senao {
      escreva("Você não está logado, tecle enter para ser redirecionado de volta ao menu.")
      leia(option)
      limpa()
      Home()
    }
  }

  funcao SalesSystem(user) {
    StyleSpacer()
    escreva("Seja bem-vindo, ", user, " !\n\n")

  }

  funcao StyleSpacer() {
    escreva(message)
    escreva("\n-------------------------------------------------------------------\n\n")
  }
}