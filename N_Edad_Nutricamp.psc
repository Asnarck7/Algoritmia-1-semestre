Algoritmo N_Edad_Nutricamp
	Definir A�o_Nacio,A�o_actual,PROM_A�OS,CANT_Trabajadores Como Entero
	Escribir 'Cuantos empleados se encuentra el dia de hoy en la empresa'
	Leer CANT_Trabajadores
	Escribir 'Escribir el a�o Actual '
	Leer A�o_actual
	Dimension a[CANT_Trabajadores]
	Para CANT_Trabajadores<-1 Hasta CANT_Trabajadores Hacer
		Escribir '////////////////////////////'
		Escribir 'Ecribir el a�o que nacio el empleado numero ( ',CANT_Trabajadores,' )'
		Leer A�o_Nacio
		// formula
		PROM_A�OS <- A�o_actual-A�o_Nacio
		Escribir 'Este es el Promedio de a�os del empleado numero ',CANT_Trabajadores,' - son ',PROM_A�OS,' A�os'
	FinPara
FinAlgoritmo
