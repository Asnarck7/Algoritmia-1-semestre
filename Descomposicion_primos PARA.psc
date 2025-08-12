Algoritmo Descomposicion_primos
	Definir num,candidato Como Entero
	num <- 0
	Escribir 'Dime un numero'
	Leer num
	candidato <- 1 // candidato a primo
	Mientras num>1 Hacer
		candidato <- primoSiguiente(candidato)
		Si num MOD candidato=0 Entonces
			Escribir candidato
			num <- num/candidato
			candidato <- 1
		FinSi
	FinMientras
FinAlgoritmo

Funcion resultado <- primo(num)
	Definir divisiones,i Como Entero
	divisiones <- 0
	i <- 0
	Definir resultado Como Logico
	resultado <- falso
	Para i<-num Hasta 1 Con Paso -1 Hacer
		Si num MOD i=0 Entonces
			divisores <- divisiones+1
		FinSi
		Si divisiones=2 Entonces
			resultado <- Verdadero
		FinSi
	FinPara
FinFuncion

// Devuelve el siguiente numero primo al indicado
Funcion resultado <- primoSiguiente(num)
	Definir resultado Como Entero
	Definir econtrado Como Logico
	encontrado <- falso
	resultado <- 0
	Mientras encontrado=falso Hacer
		num <- num+1 // se prueba con el siguiente numero
		encontrado <- primo(num)
	FinMientras
	resultado <- num
FinFuncion

Funcion SinTitulo
	
FinFuncion
