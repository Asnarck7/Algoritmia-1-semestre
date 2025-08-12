Algoritmo Calcular_Notar_Grade_9_10_11
	// Emmpezamos con Definir
	// ¿para que es Definir?
	Definir Nota_P1,Nota_P2,Nota_P3,Nota_P4,Calificaciones,Total Como Real
	// Vamos a ingresar los primeros daros basicos
	Escribir 'Bienvenido al Nuestro Programa del Colegio Latino Ibagué'
	Escribir 'Aca podremos facilitar nuestra suma y de nuestras notas, de cada uno de los periodos'
	Repetir
		Escribir ''
		Escribir 'Ingresar su Nombre y Apellido'
		Leer Name
		Escribir 'Ingresar Grado. (Correspondiente)'
		Leer Grade_PP
		Escribir ''
		Escribir '¿Que periodo vas a registrar?'
		Escribir 'Ingresar el numero que corresponde el periodo ejemplo'
		Escribir '(1 o 2 o 3 o 4)'
		Escribir ''
		Seleccion <- 'si'
		Escribir 'perido ',1
		Escribir 'perido ',2
		Escribir 'perido ',3
		Escribir 'perido ',4
		Leer respuesta
		Escribir ''
		Si respuesta=1 Entonces
			Escribir 'seleccionaste el primer periodo'
			Escribir 'Ingresar la cantidad de notas'
			Leer Cant_Notas
			acumulador <- 0
			Para Notas_P<-1 Hasta Cant_Notas Hacer
				Escribir 'Ingresa la Nota de # ',Notas_P
				Leer Nota_Estudiante
				acumulador <- acumulador+Nota_Estudiante
			FinPara
			Promedio <- acumulador/Cant_Notas
			Escribir 'El Promedio de la nota es ',Promedio
			Escribir ''
			Si Promedio<3.5 Entonces
				Escribir 'Tu promedio esta bajo el 3.5 (No pasaste el periodo)'
				Escribir 'Debes mejorar'
			FinSi
			Si Promedio>=3.5 Entonces
				Escribir 'Estas en el promedio del 3.5 de la nota (Bien hecho)'
			FinSi
			Si Promedio>=4.0 Entonces
				Escribir 'Estas en el promedio del 4.0 de la nota (Felicitaciones)'
			FinSi
			Si Promedio>=4.5 Entonces
				Escribir 'Estas en el promedio del 4.5 de la nota (Asombroso eres de los mejores)'
			FinSi
		FinSi
		Si respuesta=2 Entonces
			Escribir 'seleccionaste el segundo periodo'
			Escribir 'Ingresar la cantidad de notas'
			Leer Cant_Notas
			acumulador <- 0
			Para Notas_P<-1 Hasta Cant_Notas Hacer
				Escribir 'Ingresa la Nota de # ',Notas_P
				Leer Nota_Estudiante
				acumulador <- acumulador+Nota_Estudiante
			FinPara
			Promedio <- acumulador/Cant_Notas
			Escribir 'El Promedio de la nota es ',Promedio
			Escribir ''
			Si Promedio<3.5 Entonces
				Escribir 'Tu promedio esta bajo el 3.5 (No pasaste el periodo)'
				Escribir 'Debes mejorar'
			FinSi
			Si Promedio>=3.5 Entonces
				Escribir 'Estas en el promedio del 3.5 de la nota (Bien hecho)'
			FinSi
			Si Promedio>=4.0 Entonces
				Escribir 'Estas en el promedio del 4.0 de la nota (Felicitaciones)'
			FinSi
			Si Promedio>=4.5 Entonces
				Escribir 'Estas en el promedio del 4.5 de la nota (Asombroso eres de los mejores)'
			FinSi
		FinSi
		Si respuesta=3 Entonces
			Escribir 'seleccionaste el tercer periodo'
			Escribir 'Ingresar la cantidad de notas'
			Leer Cant_Notas
			acumulador <- 0
			Para Notas_P<-1 Hasta Cant_Notas Hacer
				Escribir 'Ingresa la Nota de # ',Notas_P
				Leer Nota_Estudiante
				acumulador <- acumulador+Nota_Estudiante
			FinPara
			Promedio <- acumulador/Cant_Notas
			Escribir 'El Promedio de la nota es ',Promedio
			Escribir ''
			Si Promedio<3.5 Entonces
				Escribir 'Tu promedio esta bajo el 3.5 (No pasaste el periodo)'
				Escribir 'Debes mejorar'
			FinSi
			Si Promedio>=3.5 Entonces
				Escribir 'Estas en el promedio del 3.5 de la nota (Bien hecho)'
			FinSi
			Si Promedio>=4.0 Entonces
				Escribir 'Estas en el promedio del 4.0 de la nota (Felicitaciones)'
			FinSi
			Si Promedio>=4.5 Entonces
				Escribir 'Estas en el promedio del 4.5 de la nota (Asombroso eres de los mejores)'
			FinSi
		FinSi
		Si respuesta=4 Entonces
			Escribir 'seleccionaste el cuarto periodo'
			Escribir 'Ingresar la cantidad de notas'
			Leer Cant_Notas
			acumulador <- 0
			Para Notas_P<-1 Hasta Cant_Notas Hacer
				Escribir 'Ingresa la Nota de # ',Notas_P
				Leer Nota_Estudiante
				acumulador <- acumulador+Nota_Estudiante
			FinPara
			Promedio <- acumulador/Cant_Notas
			Escribir 'El Promedio de la nota es ',Promedio
			Escribir ''
			Si Promedio<3.5 Entonces
				Escribir 'Tu promedio esta bajo el 3.0 (No pasaste el periodo)'
				Escribir 'Debes mejorar'
			FinSi
			Si Promedio>=3.5 Entonces
				Escribir 'Estas en el promedio del 3.5 de la nota (Bien hecho)'
			FinSi
			Si Promedio>=4.0 Entonces
				Escribir 'Estas en el promedio del 4.0 de la nota (Felicitaciones)'
			FinSi
			Si Promedio>=4.5 Entonces
				Escribir 'Estas en el promedio del 4.5 de la nota (Asombroso eres de los mejores)'
			FinSi
		FinSi
		Escribir 'Quieres ingresar mas notas (escribir si o no)'
		Leer Seleccion
	Hasta Que Seleccion='no'
	Escribir 'Terminamos por ahora, mas adelante puedes registrar mas datos (Darle reiniciar)'
FinAlgoritmo
