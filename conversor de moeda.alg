algoritmo "Cconvers�o de moedas"

var
TX,VR,R: real
MOEDA: caractere

inicio
escreval ("Digite o Valor em reais")
leia (VR)
escreval ("Escolha a moeda para a qual voc� quer converter.")
escreval ("Digite 1 para D�lares, 2 para Euros ou 3 para Libras")
leia (MOEDA)




            escolha MOEDA
caso "1","dolar","d�lar","dolares"
   escreval ("Digite a taxa do Dolar.")
   leia (TX)
   R <- VR/TX
   escreval ("O valor em D�lares �",R)
   
caso "2","Euros","Euro"
   escreval ("Digite a taxa do Euro.")
   leia (TX)
   R <- VR/TX
   escreval ("O valor em Euros �",R)
   
caso "3","Libras","Libra"
   escreval ("Digite a taxa da Libra.")
   leia (TX)
   R <- VR/TX
   escreval ("O valor em Libras �",R)
   
   
fimescolha

fimalgoritmo
