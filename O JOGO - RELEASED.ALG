algoritmo "O Jogo"

procedimento montartabuleiro()
var
inicio
   para l de 1 ate nj faca
      tabuleiro[l,0] <- jogador[l]
      para c de 1 ate 16 faca
         tabuleiro[l,c] <- "  "
      fimpara
   fimpara
fimprocedimento

procedimento exibirtabuleiro()
var
inicio
   escreva("/")
   para c de 0 ate 15 faca
      escreva("--|")
   fimpara
   escreval("--\")

   escreva("|")
   para c de 0 ate 16 faca
      escreva(posicaocab(c),"|")
   fimpara
   escreval()
   escreva("\")
   para c de 0 ate 15 faca
      escreva("--|")
   fimpara
   escreval("--/")

   para l de 1 ate nj faca
      escreva("|")
      para c de 0 ate 16 faca
         escreva(tabuleiro[l,c],"|")
      fimpara
      escreval()

      escreva("|")
      para c de 0 ate 16 faca
         escreva("--|")
      fimpara
      escreval()
   fimpara
fimprocedimento


funcao posicaocab(num:inteiro):caractere
var
   n:caractere
inicio
   n <- numpcarac(num)
   se(compr(n)=1) entao
      n <- ("0"+n)
   fimse
   retorne n
fimfuncao


procedimento lancardado(l:inteiro)
var
inicio
   escreva(jogador[l]," lança o dado... obteve:")
   aleatorio 1,6
   leia(r)
   aleatorio off
fimprocedimento


procedimento mover(linha,po,pd:inteiro)
var
inicio
se(pd < 16) entao
   tabuleiro[linha,pd] <- jogador[linha]
senao
   tabuleiro[linha,16] <- jogador[linha]
   vencedor <- linha
fimse
   tabuleiro[linha,po] <- "  "
fimprocedimento

funcao origem(linha:inteiro):inteiro
var
inicio
   para c de 0 ate 16 faca
      se(tabuleiro[linha,c] = jogador[linha])entao
         retorne c
      FIMSE
   fimpara
fimfuncao

funcao destino(po,acrescimo:inteiro):inteiro
var
inicio
   retorne po + acrescimo
fimfuncao



var
   tabuleiro:vetor [1..4,0..16] de caractere
   jogador:vetor [1..4] de caractere
   l,c,nj,r,rd,vencedor:inteiro
   nick, pular:caractere
inicio
   escreval("Vamos jogar O Jogo!!!")
   escreval("Quantos jogadores vão jogar o jogo?")
   leia(nj)
   limpatela

   escreval("O Jogo!!!")
   para c de 1 ate nj faca
      escreval("Qual o nick do",c,"º jogador?")
      leia(nick)
      jogador[c] <- maiusc(copia(nick,1,2))
   fimpara
   limpatela

   //início
   escreval("O Jogo!!!")
   montartabuleiro()
   exibirtabuleiro()

repita
//nova rodada
       rd <- rd + 1

   para l de 1 ate nj faca
      //nova jogada
      escreval()
      escreval()
      escreval("O Jogo!!!")
      escreval()
      escreval(jogador[l]," é sua vez. Tecle Enter para lançar o dado...")
      leia(pular)
      //lançamento de dado
      lancardado(l)
      mover(l,origem(l),destino(origem(l),r))
      exibirtabuleiro()
   fimpara
   //nova rodada
   escreval()
   escreval("****************************************************")
   escreval("Fim da ",rd,"ª Rodada. Tecle Enter para continuar...")
   leia()
ate vencedor <> 0
fimalgoritmo
