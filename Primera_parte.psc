Algoritmo Primera_parte
		Definir cantidad Como Real
		Definir acomuladorDeEdad Como Real
		Definir promedioF, promedioM, promediogrupo Como Real
		Definir contadorDeNumeros Como Entero
		definir genero Como Caracter
		Escribir "promedio de EDADES de estudiantes"
		Escribir "Cuantos estudiantes desea registrar?..." Sin Saltar
		Leer cantidad
		contadorDeNumeros<-0
		acomuladorDeEdad<-0
		Escribir ""
		Mientras contadorDeNumeros<-cantidad hacer
			contadorDeNumeros<-contadorDeNumeros+1
			Escribir "cual es la edad del estudiante ",contadorDeNumeros,"?...Sin Saltar"
			Leer vEDAD
			Escribir "cual es el genero : Fo M"
			Leer genero
			si genero="F" o genero "M" entonces
				Escribir "recuerda digitar un valor correcto F o M"
			fin si
			AcumuladorDeEDAD<-acumuladorDeEdad+vEdad//acumula edad del grupo
		FinMientras
		Promediogrupo=AcumuladorDeEDAD/cantidad
		promedioF<-AcumuladorGF/contadorGF
		PromedioM<-AcumuladorGM/contadorGM
		
		
		
		Escribir ""
		Escribir "la cantidad de estudiantes del grupo es",cantidad
		Escribir "promedio de edad del grupo es: ", Promediogrupo
		Escribir "cantidad de mujeres: ", contadorGF
		Escribir "promedio edad de las mujeres: ", promedioF
		Escribir "cantidad de hombres: ", contadorGM
		Escribir "promedio edad de los hombres: ", PromedioM
		Escribir ""
		Escribir "para continuar"
		Esperar Tecla
FinAlgoritmo