Algoritmo VIDA_SANA
	Definir semana Como Caracter
	Definir Respuesta,Medicina_general,Medicina_interna,Pediatria,medicina,codigo_paciente Como Entero
	Repetir
		Escribir ''
		Escribir ''
		Escribir ''
		Escribir 'Que dia de la semana vas a registrar'
		Leer semana
		Escribir ''
		Escribir 'El dia de la semana que te encuentras es ',semana
		Escribir ''
		Escribir '¿Que tipo de medicina vas a registrar?'
		Escribir '° Medicina general (',1,')'
		Escribir '° Medicina interna (',2,')'
		Escribir '° Pediatría (',3,')'
		Leer Respuesta
		// ESPACIO
		// FORMULA 1 Medicina_general
		Si Respuesta=1 Entonces
			Escribir ''
			Escribir 'Seleccionaste Medicina general'
			Escribir ''
			Escribir 'Porfavor ingresar cantidad de personas en Medicina general'
			Leer Pacientes_registrados
			Para contar_los_pacientes<-1 Hasta Pacientes_registrados Hacer
				Escribir 'Ingrese el nombre del paciente ',contar_los_pacientes
				Leer nombre_paciente
				Escribir 'ingrese el codigo del paciente ',contar_los_pacientes
				Leer codigo_paciente
			FinPara
		FinSi
		Escribir ''
		Escribir '//////////////////////////////////////'
		// FORMULA 2 Medicina_interna
		Si Respuesta=2 Entonces
			Escribir ''
			Escribir 'Seleccionaste Medicina interna'
			Escribir ''
			Escribir 'Porfavor ingresar cantidad de personas en Medicina interna'
			Leer Pacientes_registrados
			Para contar_los_pacientes<-1 Hasta Pacientes_registrados Hacer
				Escribir 'Ingrese el nombre del paciente ',contar_los_pacientes
				Leer nombre_paciente
				Escribir 'ingrese el codigo del paciente ',contar_los_pacientes
				Leer codigo_paciente
			FinPara
		FinSi
		// FORMULA 3 DE Pediatria
		Si Respuesta=3 Entonces
			Escribir ''
			Escribir 'Seleccionaste Pediatria'
			Escribir ''
			Escribir 'Porfavor ingresar cantidad de personas en pediatria'
			Leer Pacientes_registrados
			Escribir ''
			Para contar_los_pacientes<-1 Hasta Pacientes_registrados Hacer
				Escribir ''
				Escribir 'Ingrese el nombre del paciente ',contar_los_pacientes
				Leer nombre_paciente
				Escribir 'ingrese el codigo del paciente ',contar_los_pacientes
				Leer codigo_paciente
				Escribir ''
			FinPara
		FinSi
		// obcion para seguir o terminar 
		Escribir 'ya registraste los nombres de los pacientes '
		Escribir ''
		Escribir 'ya que fue la cantidad de pacientes registrados'
		Escribir ''
		Escribir '¿Quieres registrar a nuevos pacientes?'
		Escribir ''
		Escribir 'Escriba (YES) para reiniciar y colocar nuevos pacientes'
		Escribir 'Ó'
		Escribir 'Escribir (NOT) Para terminar la ejecucion del programa'
		Leer yes_not
	Hasta Que yes_not='NOT'
	Borrar Pantalla
	Escribir 'Gracias por utilizar nuestro programa de'
	Escribir 'VIDA SANA'
FinAlgoritmo
