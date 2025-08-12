Algoritmo Descuento_de_compra
	
	Definir Cant_Productos, puntos, Precio, PAGAR Como Entero
	Definir Tip_Product Como Caracter
	Definir Descuento Como Real
	//Una tienda ofrece un descuento del 15% sobre el total de la compra
	//cuando esta es mayor 500.000 pesos y el cliente tiene 1.000 punto acumulados;
	//el cliente desea saber cuánto deberá pagar finalmente por su compra.
	Escribir "Cuantos productos compro"
	leer Cant_Productos
	
	para Cant_Productos <- 1 Hasta Cant_Productos Hacer
		Escribir "Ingresar el nombre del producto " Cant_Productos
		Leer Tip_Product
		Escribir "Precio del producto"
		leer Precio
		//F
		 
		Precio_Total<-precio+precio
		Mostrar "El total de la suma de los productos es " Precio_Total
	FinPara
	
	//
	Escribir "Cuantos punto tienes acumulados"
	leer Puntos
	//
	si puntos > 1000 & Precio_Total > 500000 Entonces
		Escribir "tendras un descuento del 15%"
		Descuento<-Precio_Total*15/100
		Mostrar " Tu descuneto es " Descuento
		//F 
		PAGAR<-Precio_Total-Descuento
		Mostrar " Debes pagar " PAGAR
	sino 
		Escribir "Necesitas, tener 1000 puntos y sobrepasar los 500.000 pesos para obetner el descuento"
		Mostrar "debes pagar " Precio_Total
	FinSi
FinAlgoritmo
