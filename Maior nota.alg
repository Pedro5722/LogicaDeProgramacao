algoritmo "MaiorNota"
// Fun��o :
// Autor :
// Data : 24/09/2020
// Se��o de Declara��es 
var
      cont, n1, maior: inteiro
inicio
      cont <- 1
      maior <- 0
      enquanto (cont <= 10) faca
       escreval ("digite a nota do ", cont, "� aluno")
       leia (n1)
       cont <- cont + 1
            se   n1 >= maior entao
            maior <- n1
            fimse
      fimenquanto
      escreval("A maior nota foi: ", maior)
fimalgoritmo
