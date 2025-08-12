Algoritmo Algortimo_de_ordenamiento
	Escribir 'Cuantas personas van a Ingresar'
	Leer Cant_Personas
	Escribir 'Solor hay 5 cupos para pasar el producto y pagar'
	Escribir ''
	Cant_Falata_pasar <- Cant_Personas-5
	Escribir 'Entran 5 y quedan ',Cant_Falata_pasar,' Personas'
	Escribir Cant_Falata_pasar,' ya las vamos a reguistrar mediante estana pasando las  personas, pero claro que si se hace libre un cupo avanza el igueinte'
	Si Cant_Personas>=5 Entonces
		Escribir ''
		Escribir 'Ya van avanzar para pagar las ',Cant_Falata_pasar,' Personas'
	SiNo
		Escribir 'solo hay 5 entonces, Continuamos'
	FinSi
	Acum <- 0
	Para Cant_Producto<-1 Hasta 5 Hacer
		Escribir ''
		Escribir 'Cuantos productos son del cliente del ',Cant_Producto
		Leer Respuesta_Cantidad
		acuMM <- 0
		Para Registro_Producto<-1 Hasta Respuesta_Cantidad Hacer
			Escribir 'Ingresar Precio del Producto ',Registro_Producto
			Leer Precio_Product1
			acuMM <- acuMM+Precio_Product1
		FinPara
		Escribir ''
		Escribir 'El cliente debe pagar ',acuMM,' $ Pesos C'
		Escribir ''
	FinPara
	Definir Tiempo_Seg Como Entero
	Escribir 'Vamos a calcular los segundos que tardan los Clientes, solo pasando el producto por el scanner'
	Escribir 'Dependiendo de su tamaño'
	Escribir ''
	Escribir 'D=20cm <- 2 seg'
	Escribir 'D=30cm <- 3 seg'
	Escribir 'D=40cm <- 5 seg'
	Escribir ''
	Escribir 'T <- 3 Seg_P '
	Escribir '3 Seg_P Esto equivale el tiempo que dura el promedio que dra el producto'
	Escribir ''
	T_seg_p <- 3
	Escribir 'Multipolicamos los 3 seg_P por la cantidad de producto de cada cliente'
	Escribir ''
	Escribir 'Cuantos productos son del primer cliente'
	Leer Client_1
	Tiempo_Seg1 <- T_seg_p*Client_1
	Escribir ''
	Escribir 'tardo ',Tiempo_Seg1,' segundos '
	Escribir ''
	acuMM_D <- 0
	Para Producto<-1 Hasta Client_1 Hacer
		Escribir 'Cuanto mide el producto 1'
		Leer respuesta_tamaño
		Si respuesta_tamaño<=20 Entonces
			respuesta_tamaño1 <- 2
		FinSi
		Si respuesta_tamaño<=30 Entonces
			respuesta_tamaño2 <- 3
		FinSi
		Si respuesta_tamaño<=40 Entonces
			respuesta_tamaño3 <- 5
		FinSi
		acuMM_D1 <- acuMM_D+respuesta_tamaño1+respuesta_tamaño2+respuesta_tamaño3
		Escribir acuMM_D1
	FinPara
	Escribir ''
	Escribir 'Cuantos productos son del segundo cliente'
	Leer Client_2
	Tiempo_Seg2 <- T_seg_p*Client_2
	Escribir ''
	Escribir 'tardo ',Tiempo_Seg2,' segundos '
	Escribir ''
	Escribir ''
	acuMM_D <- 0
	Para Producto<-1 Hasta Client_2 Hacer
		Escribir 'Cuanto mide el producto ',Producto
		Leer respuesta_tamaño
		Si respuesta_tamaño<=20 Entonces
			respuesta_tamaño1 <- 2
		FinSi
		Si respuesta_tamaño<=30 Entonces
			respuesta_tamaño2 <- 3
		FinSi
		Si respuesta_tamaño<=40 Entonces
			respuesta_tamaño3 <- 5
		FinSi
		acuMM_D2 <- acuMM_D+respuesta_tamaño1+respuesta_tamaño2+respuesta_tamaño3
		Escribir acuMM_D2
	FinPara
	Escribir ''
	Escribir 'Cuantos productos son del tercero cliente'
	Leer Client_3
	Tiempo_Seg3 <- T_seg_p*Client_3
	Escribir ''
	Escribir 'tardo ',Tiempo_Seg3,' segundos '
	Escribir ''
	Escribir ''
	acuMM_D <- 0
	Para Producto<-1 Hasta Client_3 Hacer
		Escribir 'Cuanto mide el producto ',Producto
		Leer respuesta_tamaño
		Si respuesta_tamaño<=20 Entonces
			respuesta_tamaño1 <- 2
		FinSi
		Si respuesta_tamaño<=30 Entonces
			respuesta_tamaño2 <- 3
		FinSi
		Si respuesta_tamaño<=40 Entonces
			respuesta_tamaño3 <- 5
		FinSi
		acuMM_D3 <- acuMM_D+respuesta_tamaño1+respuesta_tamaño2+respuesta_tamaño3
		Escribir acuMM_D3
	FinPara
	Escribir ''
	Escribir 'Cuantos productos son del cuarto cliente'
	Leer Client_4
	Tiempo_Seg4 <- T_seg_p*Client_4
	Escribir ''
	Escribir 'tardo ',Tiempo_Seg4,' segundos '
	Escribir ''
	Escribir ''
	acuMM_D <- 0
	Para Producto<-1 Hasta Client_4 Hacer
		Escribir 'Cuanto mide el producto ',Producto
		Leer respuesta_tamaño
		Si respuesta_tamaño<=20 Entonces
			respuesta_tamaño1 <- 2
		FinSi
		Si respuesta_tamaño<=30 Entonces
			respuesta_tamaño2 <- 3
		FinSi
		Si respuesta_tamaño<=40 Entonces
			respuesta_tamaño3 <- 5
		FinSi
		acuMM_D4 <- acuMM_D+respuesta_tamaño1+respuesta_tamaño2+respuesta_tamaño3
		Escribir acuMM_D4
	FinPara
	Escribir ''
	Escribir 'Cuantos productos son del quinto cliente'
	Leer Client_5
	Tiempo_Seg5 <- T_seg_p*Client_5
	Escribir ''
	Escribir 'tardo ',Tiempo_Seg5,' segundos '
	Escribir ''
	Escribir ''
	acuMM_D <- 0
	Para Producto<-1 Hasta Client_5 Hacer
		Escribir 'Cuanto mide el producto ',Producto
		Leer respuesta_tamaño
		Si respuesta_tamaño<=20 Entonces
			respuesta_tamaño1 <- 2
		FinSi
		Si respuesta_tamaño<=30 Entonces
			respuesta_tamaño2 <- 3
		FinSi
		Si respuesta_tamaño<=40 Entonces
			respuesta_tamaño3 <- 5
		FinSi
		acuMM_D5 <- acuMM_D+respuesta_tamaño1+respuesta_tamaño2+respuesta_tamaño3
		Escribir acuMM_D5
	FinPara
	// Formula 
	TOTAL_DE_SEGUNDOS_NORMAL <- Tiempo_Seg1+Tiempo_Seg2+Tiempo_Seg3+Tiempo_Seg4+Tiempo_Seg5
	TOTAL_DE_SEGUNDOS_POR_TAMAÑO <- acuMM_D1+acuMM_D2+acuMM_D3+acuMM_D4+acuMM_D5
	// Formula final
	Total_DE_TIEMPO_NORMAL_Y_TAMAÑO_PROBAILIDAD <- TOTAL_DE_SEGUNDOS_NORMAL+TOTAL_DE_SEGUNDOS_POR_TAMAÑO
	Escribir 'Pero por el tamaño del producto tardamos '
	Escribir 'la probabilidad cantidad de tiempo por tamaño en total ES ',Total_DE_TIEMPO_NORMAL_Y_TAMAÑO_PROBAILIDAD
	Escribir 'PERO'
	Escribir 'PERO'
	Escribir 'PERO'
	Escribir 'Con la interligencia artificia (IA)'
	Escribir ''
	Escribir 'no afectaria el tamaño dado que solo por ver que producto'
	Escribir 'selecciona ya se sabe cuanto cobrar entonces'
	Escribir ''
	IA <- TOTAL_DE_SEGUNDOS_NORMAL+TOTAL_DE_SEGUNDOS_POR_TAMAÑO
	Escribir 'Nos ahorramos de tiempo ',IA,' Con la inteligencia artificial'
	TIME_MIN1 <- IA/60
	Escribir TIME_MIN1,' Minutos'
	Escribir ''
	Escribir 'dado que seria D-D'
	Escribir ''
	Escribir 'La cantidad de tiempo que tarda es ',TOTAL_DE_SEGUNDOS_NORMAL,' NORMAL Segundos'
	TIME_MIN2 <- TOTAL_DE_SEGUNDOS_NORMAL/60 // 60segundos, es para scar los minutos
	Escribir 'seria ',TIME_MIN2,' Minutos'
	Escribir ''
	Escribir ''
	Escribir ''
	Escribir 'Recuerda que quedaron ',Cant_Falata_pasar
	Escribir '',TOTALSUMA
	Si Cant_Personas=0 Entonces
		Escribir 'Final del alrotimo por el momento; darle reiniciar para ingresar nuevos valores'
		Escribir ''
	FinSi
FinAlgoritmo
