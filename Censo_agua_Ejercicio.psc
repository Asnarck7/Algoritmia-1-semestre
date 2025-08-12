Algoritmo Censo_agua_Ejercicio
	Definir fila, columna, p Como Entero;  // i = fila  // j = columna
	Definir suma, sumatotal, ma, p1, porcentaje Como Real;

	Dimension Matriz[4,3];
	Escribir "Las ciudad son";
	Mostrar  "1. Riobamba";
	Mostrar  "2. Quito";
	Mostrar  "4. Ambato";
	Mostrar  "5. Guayaquil";
	
	Para fila <- 1 Hasta 4 con paso 1 Hacer;
		para columna<-1 hasta 3 con paso 1 hacer;
			Matriz[fila,columna]<-azar(100);
		FinPara
	FinPara
	
	Escribir "La Matriz es: ";
	Mostrar "";
	Para fila <- 1 Hasta 4 Con Paso 1 Hacer;
		para columna <- 1 Hasta 3 con paso 1 hacer;
		
			Mostrar Sin Saltar " [" fila "," columna "]->"
			Escribir sin saltar " ", Matriz[fila,columna];
		FinPara
	FinPara
	Escribir "  ";
	ma = 0
	sumatotal = 0
	
	Mostrar ""; //espacio
	
	//vamos a organizar la Matriz
	para fila <- 1 hasta 4 con paso 1 hacer;
		para columna <- 1 hasta 3 con paso 1 hacer;
			Mostrar Sin Saltar "  [" fila "," columna "]->"
			Mostrar Sin Saltar " " Matriz[fila,columna]
			
		FinPara
		Escribir " ";
	FinPara
	Mostrar "";
	para fila <- 1 Hasta 4 con paso 1 Hacer;
		suma = 0;
		Para columna <- 1 Hasta 3 Con Paso 1 Hacer;
			suma = suma + Matriz[fila,columna];
			si suma>=ma O ma = 0 Entonces;
				ma = suma
				p = fila
				si fila = 2 Entonces
					p1 = suma;
				FinSi
			FinSi
		FinPara
		sumatotal<-sumatotal+suma
	FinPara
	Mostrar "";
	Mostrar "La ciudad que mas consume agua es la numero " p; // p esto es p
	Mostrar "";
	porcentaje = (p1 * 100)/sumatotal;
	Para fila <- 1 Hasta 4 con paso 1 Hacer
		suma1 = 0;
		para columna <- 1 Hasta 3 Con Paso 1 Hacer
			suma1<-suma1+Matriz[fila,columna];
			si suma1 >= ma1 o ma1=0 Entonces
				ma1 <- suma1;
				p=fila
			FinSi
			si fila = 1 Entonces
				Mostrar "";
				Mostrar "El consumo total de los niños es: ", suma1;
				
				
				
			FinSi
			si fila = 2 Entonces
				mostrar "";
				Mostrar "El consumo total de los adultos es: ", suma1;
				
			FinSi
			si  fila = 3 Entonces
				Mostrar "";
				Mostrar "El consumo total de los adultos mayores es: ", suma1;
			FinSi
		FinPara
	FinPara
	Mostrar "";
	Mostrar "";
	Escribir "Quito consume un porcentaje de: ", porcentaje, "%";
	
FinAlgoritmo
