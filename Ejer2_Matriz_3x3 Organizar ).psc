Algoritmo Ejer2_Matriz_3x3
	
	Definir fila, columna Como Entero;
	Definir Matriz, n, suma Como Real;
	Dimension Matriz[3,3];
	Para fila<-1 Hasta 3 con paso 1 Hacer
		Para columna  <-1 Hasta 3 Con Paso 1 Hacer
			Escribir "Ingresar el Dato de la Matriz de la posicion: [ " fila "," columna "]";
			leer Matriz[fila,columna];
		FinPara
	FinPara
	
	Para fila <- 1 hasta 3 con paso 1 Hacer
		para columna <- 1 Hasta 3 Con Paso 1 Hacer
			Escribir sin saltar " [" fila "," columna "]-> "
			Escribir Sin Saltar Matriz[fila, columna], " " ;
		FinPara
		Escribir " ";
	FinPara
FinAlgoritmo
