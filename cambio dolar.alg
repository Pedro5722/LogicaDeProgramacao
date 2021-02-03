var
valorreal,taxadolar,valordolar,taxaeuro,valoreuro: real
inicio
escreval("Qual o valor da taxa do dolar ?")
leia(taxadolar)

Limpatela

escreval("Qual o valor da taxa do euro ?")
leia(taxaeuro)

Limpatela

escreval("Qual o valor que deseja converter ?(R$)")
leia(valorreal)

Limpatela


valordolar <- valorreal/taxadolar

valoreuro <- valorreal/taxaeuro

escreval("O valor em reais: ",valorreal)
escreval("Valor em Dolares: ",valordolar)
escreval("Valor em Euros: ", valoreuro)


fimalgoritmo
