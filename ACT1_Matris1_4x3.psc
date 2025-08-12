Algoritmo ACT1_Matris1_4x3
	Definir fila, columna Como Entero;
	Definir Matriz, n, suma Como Real;
	Dimension Matriz[4,3];
	
	para fila <-1 hasta 4 con paso 1 hacer 
		para columna <-1 hasta 3 con paso 1 hacer 
			Escribir "Ingresar el Dato de la posicion [ ",fila "," columna, " ]" ;
			leer n;
			Matriz[fila,columna]<-n
			suma <- suma + Matriz[fila,columna];
		FinPara
	FinPara
	
	Para fila <- 1 hasta 4 con paso 1 Hacer
		para columna <- 1 hasta 3 con paso 1 Hacer
			Mostrar Sin Saltar  " [" fila "," columna "]-> " 
			Escribir sin saltar "  " matriz[fila,columna]
		FinPara
		Escribir " ";
	FinPara
	
	
	
	//Dejamos el resultado de la suma en el final 
	Mostrar "EL resultado de la suma de todos los datos de la Matriz es: " suma;
FinAlgoritmo
