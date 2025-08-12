Algoritmo N_Edad_Nutricamp
	Definir Año_Nacio,Año_actual,PROM_AÑOS,CANT_Trabajadores Como Entero
	Escribir 'Cuantos empleados se encuentra el dia de hoy en la empresa'
	Leer CANT_Trabajadores
	Escribir 'Escribir el año Actual '
	Leer Año_actual
	Dimension a[CANT_Trabajadores]
	Para CANT_Trabajadores<-1 Hasta CANT_Trabajadores Hacer
		Escribir '////////////////////////////'
		Escribir 'Ecribir el año que nacio el empleado numero ( ',CANT_Trabajadores,' )'
		Leer Año_Nacio
		// formula
		PROM_AÑOS <- Año_actual-Año_Nacio
		Escribir 'Este es el Promedio de años del empleado numero ',CANT_Trabajadores,' - son ',PROM_AÑOS,' Años'
	FinPara
FinAlgoritmo
