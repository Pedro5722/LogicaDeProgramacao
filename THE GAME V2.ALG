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
   c,l: inteiro
inicio
   //cabeçalho
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

   //linhas
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

procedimento mover(linha,po,pd:inteiro)
var
inicio
   se(pd >= 0)  entao
      se(pd < 16) entao
         tabuleiro[linha,pd] <- jogador[linha]
      senao
         tabuleiro[linha,16] <- jogador[linha]
         vencedor <- linha
      fimse
      tabuleiro[linha,po] <-"  "
   senao
      tabuleiro[linha,0] <- jogador[linha]
   fimse
fimprocedimento


procedimento lancardado(l:inteiro)
var
inicio
   escreva(jogador[l]," lança o dado... obteve: ")
   aleatorio 1,6
   leia(r)
   aleatorio off
fimprocedimento


procedimento prenda(l,p:inteiro)
var
   nk:caractere
   j,jb:inteiro
inicio
   escolha p
   caso 4
      escreval("Prenda: Volte 2 casas.")
      mover(l,p,p-2)
      exibirtabuleiro()
   caso 9
      escreval("Prenda: Escolha um jogador para avançar 2 casas.")
      escreval("Qual jogador você escolhe?")
      para j de 1 ate nj faca
         se(j <> l) entao
            escreval(jogador[j])
         fimse
      fimpara
      leia(nk)
      nk <- maiusc(nk)
      escreval("Jogador ",nk," avance 2 casas...")
      jb <- linhajogador(nk)
      mover(jb,origem(jb),origem(jb)+2)
      exibirtabuleiro()
   caso 15
      escreval("Prenda: Volte para o início do jogo.")
      mover(l,p,0)
      exibirtabuleiro()
   fimescolha
fimprocedimento

procedimento bonus(l,p:inteiro)
var
   nk:caractere
   j,jb:inteiro
inicio
   escolha p
   caso 6
      escreval("Bônus: Avance para a casa 10.")
      mover(l,p,10)
      exibirtabuleiro()
   caso 11
      escreval("Bônus: Avance 1 casa.")
      mover(l,p,p+1)
      exibirtabuleiro()
   caso 13
      escreval("Bônus: Escolha um jogador para voltar 2 casas.")
      escreval("Qual jogador você escolhe?")
      para j de 1 ate nj faca
         se(j <> l) entao
            escreval(jogador[j])
         fimse
      fimpara
      leia(nk)
      nk <- maiusc(nk)
      escreval("Jogador ",nk," volte 2 casas...")
      jb <- linhajogador(nk)
      mover(jb,origem(jb),origem(jb)-2)
      exibirtabuleiro()
   fimescolha
fimprocedimento

procedimento finalizar()
var
   j:inteiro
inicio
   para j de 1 ate nj faca
      se(j <> vencedor) entao
         mover(j,origem(j),0)
      fimse
   fimpara
   escreval("Parabéns ",jogador[vencedor],", você venceu O Jogo.")
   exibirtabuleiro()
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

funcao origem(linha:inteiro):inteiro
var
inicio
   para c de 0 ate 16 faca
      se(tabuleiro[linha,c] = jogador[linha]) entao
         retorne c
      fimse
   fimpara
fimfuncao

funcao destino(po,acrescimo:inteiro):inteiro
var
inicio
   retorne po + acrescimo
fimfuncao

funcao linhajogador(jogador:caractere): inteiro
var
   j:inteiro
inicio
   para j de 1 ate nj faca
      se(jogador[j] = jogador) entao
         retorne j
      fimse
   fimpara
fimfuncao

var
   tabuleiro:vetor [1..4,0..16] de caractere
   jogador:vetor [1..4] de caractere
   nick,pular:caractere
   nj:inteiro
   c,l,rd:inteiro
   r:inteiro
   vencedor:inteiro
   vencedor:inteiro

inicio
   //in?cio
   escreval("Vamos jogar O Jogo!!!")
   escreval("Quantos jogadores vão jogar")
   leia(nj)
   limpatela

   escreval("O Jogo!!!")
   para c de 1 ate nj faca
      escreval("Qual o nick",c,"° Jogador? (2 dígitos)")
      leia(nick)
      jogador[c] <- maiusc(copia(nick,1,2))
   fimpara
   montartabuleiro()
   escreval("O Jogo!!!")
   exibirtabuleiro()

   repita
      //nova rodada
      rd <- rd + 1
      escreval()
      escreval(rd,"° Rodada")
      escreval("****************************************************")
      para l de 1 ate nj faca
      se (vencedor = 0 ) entao
         //nova jogada
         escreval("O Jogo!!!")
         escreval(jogador[l]," ° sua vez. Tecle Enter para lan?ar o dado...")
         leia(pular)
         lancardado(l)
         mover(l,origem(l),destino(origem(l),r))
         exibirtabuleiro()
         escreval()
         prenda(l,origem(l))
         bonus(l,origem(l))
         escreval()
         fimse
      fimpara
      //fim rodada
      escreval()
      escreval("****************************************************")
      escreval("Fim da",rd,"° Rodada. Tecle Enter para continuar...")
      leia(pular)
   ate vencedor <> 0
   finalizar()
fimalgoritmo