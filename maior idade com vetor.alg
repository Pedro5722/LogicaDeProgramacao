algoritmo "Maior idade"


var
   valores: vetor [1..20] de inteiro
   Maior,contador: inteiro
inicio


contador <- 1

   para contador de 1 ate 20 faca
      escreva("Digite a idade do ",contador ,"° atleta: ")
      leia(valores[contador])
      se valores[contador] > maior entao
         maior<-valores[contador]
      fimse
      contador <- contador + 1
   fimpara

escreval("Maior idade: ",maior)

fimalgoritmo
