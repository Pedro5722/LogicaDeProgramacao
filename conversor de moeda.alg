algoritmo "Cconversão de moedas"

var
TX,VR,R: real
MOEDA: caractere

inicio
escreval ("Digite o Valor em reais")
leia (VR)
escreval ("Escolha a moeda para a qual você quer converter.")
escreval ("Digite 1 para Dólares, 2 para Euros ou 3 para Libras")
leia (MOEDA)




            escolha MOEDA
caso "1","dolar","dólar","dolares"
   escreval ("Digite a taxa do Dolar.")
   leia (TX)
   R <- VR/TX
   escreval ("O valor em Dólares é",R)
   
caso "2","Euros","Euro"
   escreval ("Digite a taxa do Euro.")
   leia (TX)
   R <- VR/TX
   escreval ("O valor em Euros é",R)
   
caso "3","Libras","Libra"
   escreval ("Digite a taxa da Libra.")
   leia (TX)
   R <- VR/TX
   escreval ("O valor em Libras é",R)
   
   
fimescolha

fimalgoritmo
