Algoritmo "semnome"

Var
nomes:vetor[0..4] de caractere
destino:vetor[0..4] de caractere
dia:vetor[0..4] de caractere
op,nome:caractere
i,j,s:inteiro

procedimento inicializa()

Inicio
   enquanto op<>"3" faca
   escreval("|________|MENU|_______|")
   escreval("|______|Bem Vindo|______|")
   escreval("|_________|AO|________|")
   escreval("|_____|BelaViagem+|____|")
   escreval("-----------------------------------------------------------")
   escreval("|___-Destinos em oferta:|Natal R$ 1.310|Orlando R$ 5.423|Recife R$ 2.128|São Francisco R$ 6.633|-___|  ")
   escreval("-----------------------------------------------------------")
   escreval("(1)Cadastrar Destino")
   escreval("(2)Consultar Destinos")
   escreval("(3)Sair")
   escreval("Selecione Uma Opçao")
   leia(op)
   se op="1" entao
      limpatela
      cadastra_destino()
   fimse
   se op="2" entao
      limpatela
      consultar_destino()
   fimse
   se op="3" entao
      para i de 0 ate 4 faca
         nomes[i]<-"x"
      fimpara
      limpatela
      escreval("obrigado!,volte sempre!")
   fimse
fimenquanto

fimprocedimento

procedimento cadastra_destino()
inicio
   para i de 0 ate 4 faca
      se (nomes[i]="")entao
         escreva("nome do cliente:")
         leia(nomes[i])
         escreva("Destino:")
         leia(destino[i])
         escreva("dia da viagem:")
         leia(dia[i])
         escreval("------------------------------")
         escreval("|Cadastro Feito com sucesso!!|")
         escreval("------------------------------")
         voltar_menu()
         s<-s+i
         limpatela
      fimse
   fimpara
   escreval("2")
fimprocedimento

procedimento voltar_menu()
inicio
   escreva("voltar para o menu (s/n)?")
   leia(op)
   se op="s" entao
      i<-I+i
      limpatela
      inicializa()
   senao
      limpatela
      cadastra_destino()
   fimse
fimprocedimento

procedimento consultar_destino()
inicio
   j<-0
   escreva("digite o seu nome:")
   leia(nome)
   para i de 0 ate 4 faca
      se nome=nomes[i] entao
         escreval("nome do cliente:",nomes[i])
         escreval("destino:",destino[i])
         escreval("dia da viagem:",dia[i])
         j<-j+i
      fimse
   fimpara
   se j=0 entao
      escreval("Destino nao Cadastrado")
   fimse
   voltar_menu2()
   limpatela
fimprocedimento

procedimento voltar_menu2()
inicio
   escreva("Voltar para o menu (s/n)?")
   leia(op)
   se op="s" entao
      limpatela
      inicializa()
   senao
      limpatela
      consultar_destino()
   fimse
fimprocedimento
inicio
   inicializa()
fimalgoritmo


