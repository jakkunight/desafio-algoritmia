[ Problema #1 ]:
	INICIO
		ENTERO N1, N2; // Se DECLARAN las variables y su tipo de dato.
		LEER(N1, N2); // La intrucción asume el tipo de dato según lo que el programa necesite
		suma = N1 + N2;
		resta = N1 + N2;
		producto = N1 * N2;
		cociente = N1 / N2; // También se puede verificar si la división es posible antes de realizar el cálculo.
		IMPRIMIR(suma, resta, producto, cociente);
	FIN
[ Problema #2 ]:
	// Perímetro = base + altura + RAÍZ CUADRADA(base * base + altura * altura)
	// Área = base * altura / 2
	INICIO
		NÚMERO base, altura, área, perímetro;
		LEER(base, altura);
		área = base * altura / 2;
		perímetro = base + altura + RAÍZ_CUADRADA(base * base + altura * altura);
		IMPRIMIR(área, perímetro);
	FIN
[ Problema #3 ]:
	INICIO
		NÚMERO cm, fact = 2.54, inch;
		LEER(cm);
		inch = cm * fact;
		IMPRIMIR(inch);
	FIN
[ Problema #4 ]:
	INICIO
		TABLA tabla_de_vectores;
		COLUMNA datos_del_vector;
		CONECTAR CON(BASE DE DATOS);
		CONSULTAR("vectores", tabla_de_vectores);
		datos_del_vector = tabla_de_vectores[0];
		NÚMERO vector = datos_del_vector.datos , n = datos_del_vector.longitud ;
		// Se puede también pedir al usuario que ingrese un vector o leerlo desde un archivo en el PC.
		// La ide acá es mostrar lo absurda que es la redacción del problema y cómo se pueden dar treatas
		// en los exámenes a causa de éstas.
		NÚMERO contador = 0, clave;
		LEER(clave);
		DESDE i = 0 HASTA n - 1
			SI vector[i] == clave ENTONCES
				contador = contador + 1;
			FINSI
		FINDESDE
		IMPRIMIR(contador);
	FIN
[ Problema #5 ]:
	INICIO
		ENTERO día, mes, año;
		SERVIDOR server;
		CONECTAR CON("https://servidor.utc.net/now/", server);
		ENTERO { año_actual, mes_actual, día_actual } = CONSULTAR(["día", "mes, año"], server);
		LEER(día, mes, año);
		ENTERO edad = año_actual - año - 1;
		SI (mes_actual > mes) || (mes_actual == mes && día_actual >= día) ENTONCES
			edad = edad + 1;
		FINSI
		IMPRIMIR(edad);
	FIN 
[ Problema #6 ]:
	INICIO
		TABLA tabla_de_vectores;
		COLUMNA datos_del_vector;
		CONECTAR CON(BASE DE DATOS);
		CONSULTAR("vectores", tabla_de_vectores);
		datos_del_vector = tabla_de_vectores[0];
		NÚMERO vector = datos_del_vector.datos , n = datos_del_vector.longitud ;
		// Se puede también pedir al usuario que ingrese un vector o leerlo desde un archivo en el PC.
		// La ide acá es mostrar lo absurda que es la redacción del problema y cómo se pueden dar treatas
		// en los exámenes a causa de éstas.
		DESDE i = 0 HASTA n - 2
			DESDE j = i + 1 HASTA n - 1
				SI vector[i] < vector[j] ENTONCES
					aux = vector[i];
					vector[i] = vector[j];
					vector[j] = aux;
				FINSI
			FINDESDE
		FINDESDE
		IMPRIMIR(vector); // Se asume que la instrucción detecta si se debe imprimir o no como vector.
	FIN
[ Problema #7 ]:
	INICIO
		NÚMERO n, s = 20, vector[s];
		NÚMERO mayor, menor;
		LEER(n);
		mayor = n;
		menor = mayor;
		vector[0] = n;
		DESDE i = 1 HASTA s - 1
			LEER(n);
			vector[i] = n;
			SI n > mayor ENTONCES
				mayor = n;
			FINSI
			SI n < menor ENTONCES
				menor = n;
			FINSI
		FINDESDE
		IMPRIMIR(mayor, menor);
	FIN
[ Problema #8 ]: (combinación del #7 y el #4)
	INICIO
		LEER(s);
		TEXTO vector[s];
		NÚMERO contador = 0;
		DESDE i = 0 HASTA s - 1
			LEER(n);
			vector[i] = n;
			SI vector[i] == "a" || vector[i] == "e" || vector[i] == "i" || vector[i] == "o" || vector[i] == "u" ENTONCES
				contador = contador + 1;
			FINSI
		FINDESDE
		IMPRIMIR(contador);
	FIN
[ Problema #9 ]: (modificación del #8)
	INICIO
		LEER(s);
		NÚMERO vector[s];
		DESDE i = 0 HASTA s - 1
			LEER(n);
			vector[i] = n;
		FINDESDE
		DESDE i = s - 1 HASTA 0, PASO -1
			IMPRIMIR(vector[i]);
		FINDESDE
	FIN

[ Problema #10 ]: (modificación del #4)
	FUNCIÓN resto_división(dividendo, divisor)
		cociente = 0;
		MIENTRAS dividendo - divisor >= 0 HACER
			cociente = cociente + 1;
			dividendo = dividendo - divisor;
		FINMIENTRAS
	RETORNAR
	INICIO
		s = 50;
		contador = 0;
		NÚMERO vector[s];
		DESDE i = 0 HASTA s - 1
			LEER(n);
			vector[i] = n;
			SI resto_división(n, 3) == 0 ENTONCES // n mod 3 == 0 o n % 3 == 0
				contador = contador + 1;
			FINSI
		FINDESDE
		IMPRIMIR(contador);
	FIN

	
