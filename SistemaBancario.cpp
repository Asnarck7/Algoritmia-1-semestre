#include <iostream>
#include <string>
#include <ctime>
#include <cstdlib>
// Se definen e importan las librerias que necesitaremos para el desarrollo del problema

using namespace std;

// Estructura que guarda los datos de una cuenta
struct Cuenta {
    int cedula_cuenta;
    string nombre;
    string tipoCuenta;
    double saldo;
    long long numeroTelefono;
    string fechaDeCreacion;
};

// Estructura que contiene los nodos que va a manejar el Arbol AVL
struct NodoAVL {
    Cuenta cuenta;
    NodoAVL* izquierdo;
    NodoAVL* derecho;
    int altura;
};

//Clase principal donde se simula el sistema bancario (Usando Arbol AVL)
class SistemaBancario {
public:
    //Constructor
    SistemaBancario() {
        raiz = nullptr;
    }

    //Metodo que calcula la altura de un nodo
    int altura(NodoAVL* nodo) {
        if (nodo == nullptr) {
            return 0;
        }
        return nodo->altura;
    }

    // Metodo que calcula y retorna el FE (Factor de equilibrio) del nodo
    int balance(NodoAVL* nodo) {
        if (nodo == nullptr) {
            return 0;
        }
        return altura(nodo->izquierdo) - altura(nodo->derecho);
    }

    // Nodo que rota el nodo que esta afectando el equilibrio del arbol hacia la derecha
    NodoAVL* rotar_derecha(NodoAVL* nodo) {
        NodoAVL* nodo_a = nodo->izquierdo;
        NodoAVL* nodo_b = nodo_a->derecho;

        nodo_a->derecho = nodo;
        nodo->izquierdo = nodo_b;

        // La funcion max(a, b) recibe dos argumentos numericos y retorna el mayor valor
        nodo->altura = max(altura(nodo->izquierdo), altura(nodo->derecho)) + 1;
        nodo_a->altura = max(altura(nodo_a->izquierdo), altura(nodo_a->derecho)) + 1;

        return nodo_a;
    }

    // Nodo que rota el nodo que esta afectando el equilibrio del arbol hacia la izquierda
    NodoAVL* rotar_izquierda(NodoAVL* nodo) {
        NodoAVL* nodo_a = nodo->derecho;
        NodoAVL* nodo_b = nodo_a->izquierdo;

        nodo_a->izquierdo = nodo;
        nodo->derecho = nodo_b;

        // La funcion max(a, b) recibe dos argumentos numericos y retorna el mayor valor
        nodo->altura = max(altura(nodo->izquierdo), altura(nodo->derecho)) + 1;
        nodo_a->altura = max(altura(nodo_a->izquierdo), altura(nodo_a->derecho)) + 1;

        return nodo_a;
    }
    // Metodo que inserta un nodo en el arbol AVL usando como informacion
    //el numero de telefono que se asigna al crear una cuenta
    NodoAVL* insertar(NodoAVL* nodo, Cuenta cuenta) {
        if (nodo == nullptr) {
            NodoAVL* nuevo_nodo = new NodoAVL;
            nuevo_nodo->cuenta = cuenta;
            nuevo_nodo->izquierdo = nullptr;
            nuevo_nodo->derecho = nullptr;
            nuevo_nodo->altura = 1;
            cout << "Cuenta creada correctamente.";
            return nuevo_nodo;
        }

        //Si el numero de telefono es menor que el que ya esta insertado en el arbol
        //El nodo nuevo se inserta a la izquierda
        if (cuenta.numeroTelefono < nodo->cuenta.numeroTelefono) {
            nodo->izquierdo = insertar(nodo->izquierdo, cuenta);
            cout << "Cuenta creada correctamente.";
        }
        //Si el numero de telefono es mayor que el que ya esta insertado en el arbol
        //El nodo nuevo se inserta a la derecha
        else if (cuenta.numeroTelefono > nodo->cuenta.numeroTelefono) {
            nodo->derecho = insertar(nodo->derecho, cuenta);
            cout << "Cuenta creada correctamente.";
        }
        //Si el numero es igual a un nodo insertado se devuelve
        //un mensaje de error y no se inserta el nodo en el arbol
        else {
            cout << "El numero: " << cuenta.numeroTelefono <<" Ya esta asignado a una cuenta";
            return nodo;
        }

        nodo->altura = 1 + max(altura(nodo->izquierdo), altura(nodo->derecho));

        //Luego de insertar el nodo requerido se evaluan los factores de equilibrio
        //de los subarboles para evaluar la necesidad de hacer una rotacion en los nodos

        int factor_balance = balance(nodo);

        // Si el subarbol está desequilibrado hacia la izquierda se hace una rotacion derecha
        if (factor_balance > 1 && cuenta.numeroTelefono < nodo->izquierdo->cuenta.numeroTelefono) {
            return rotar_derecha(nodo);
        }

        // Si el subarbol está desequilibrado hacia la derecha se hace una rotacion izquierda
        if (factor_balance < -1 && cuenta.numeroTelefono > nodo->derecho->cuenta.numeroTelefono) {
            return rotar_izquierda(nodo);
        }

        // estas condicionales evaluan la necesidad de realizar una rotacion doble
        if (factor_balance > 1 && cuenta.numeroTelefono > nodo->izquierdo->cuenta.numeroTelefono) {
            nodo->izquierdo = rotar_izquierda(nodo->izquierdo);
            return rotar_derecha(nodo);
        }

        if (factor_balance < -1 && cuenta.numeroTelefono < nodo->derecho->cuenta.numeroTelefono) {
            nodo->derecho = rotar_derecha(nodo->derecho);
            return rotar_izquierda(nodo);
        }

        return nodo;
    }

    //Metodo que recibe y asigna los datos del cuenta y crea el nodo llamando al insertar
    void insertarcuenta(int cedula, string nombre, string tipo, double saldo, long long numero, string fecha) {
        Cuenta cuenta;
        cuenta.cedula_cuenta = cedula;
        cuenta.nombre = nombre;
        cuenta.tipoCuenta = tipo;
        cuenta.saldo = saldo;
        cuenta.numeroTelefono = numero;
        cuenta.fechaDeCreacion = fecha;

        raiz = insertar(raiz, cuenta);
    }

    //Metodo que usa recursividad para poder mostrar las cuentas
    void mostrarCuentas() {
        mostrarCuentas(raiz);
    }

    // Metodo que simula la accion de un deposito a una cuenta de banco ya existente
    void depositar(long long numero, double monto) {
        NodoAVL* nodo = buscarCuenta(raiz, numero);
        if (nodo != nullptr) {
            nodo->cuenta.saldo += monto;
            cout << "Deposito exitoso. Saldo actual: " << nodo->cuenta.saldo << endl;
        }
        else {
            cout << "No se encontro la cuenta con el numero: " << numero << endl;
        }
    }

    // Metodo que simula la accion de un retiro a una cuenta existente
    // Si el saldo de la cuenta no es suficiente para el monto que se quiere retirar
    // Devuelve un mensaje de error de saldo insuficiente
    void retirar(long long numero, double monto) {
        NodoAVL* nodo = buscarCuenta(raiz, numero);
        if (nodo != nullptr) {
            if (nodo->cuenta.saldo >= monto) {
                nodo->cuenta.saldo -= monto;
                cout << "Retiro exitoso. Saldo actual: " << nodo->cuenta.saldo << endl;
            }
            else {
                cout << "Fondos insuficientes. Saldo actual: " << nodo->cuenta.saldo << endl;
            }
        }
        else {
            cout << "No se encontro la cuenta con el numero: " << numero << endl;
        }
    }

    // Metodo que usa la libreria de Ctime para poder guardar en una variable
    //la fecha actual de cuando se crea una cuenta
    string guardarFecha(){
    int anio = 1900;
    time_t now = time(0);
    tm *time = localtime(&now);
    string fecha = to_string(time->tm_yday - (time->tm_mon * 30) + 1) + " // " + to_string(time->tm_mon + 1) + " // " + to_string(anio + time->tm_year);
    return fecha;
}

private:
    NodoAVL* raiz;

    // Metodo que muestra toda la informacion de la estructura cuenta
    void mostrarCuentas(NodoAVL* nodo) {
        if (nodo != nullptr) {
            mostrarCuentas(nodo->izquierdo);

            cout << "Numero de cuenta: " << nodo->cuenta.numeroTelefono << endl;
            cout << "Cedula: " << nodo->cuenta.cedula_cuenta << endl;
            cout << "Nombre: " << nodo->cuenta.nombre << endl;
            cout << "Saldo: " << nodo->cuenta.saldo << endl;
            cout << "Tipo de cuenta: " << nodo->cuenta.tipoCuenta << endl;
            cout << "Fecha de Creacion: " << nodo->cuenta.fechaDeCreacion << endl;
            cout << "-----------------------" << endl;

            mostrarCuentas(nodo->derecho);
        }
    }

    // Metodo que busca un nodo en el arbol AVL para poder modificarlo o acceder a su informacion
    NodoAVL* buscarCuenta(NodoAVL* nodo, long long numero) {
        if (nodo == nullptr || nodo->cuenta.numeroTelefono == numero) {
            return nodo;
        }

        if (numero < nodo->cuenta.numeroTelefono) {
            return buscarCuenta(nodo->izquierdo, numero);
        }
        else {
            return buscarCuenta(nodo->derecho, numero);
        }
    }
};

// Metodo del menu principal del sistema bancario
void mostrarMenu() {
        int opcion;
        cout << "----- Menu Principal -----" << endl;
        cout << "1. Crear Cuenta" << endl;
        cout << "2. Mostrar cuentas" << endl;
        cout << "3. Realizar deposito" << endl;
        cout << "4. Realizar retiro" << endl;
        cout << "5. Salir" << endl;
        cout << "----------------" <<  "        Hecho por:      "  << "Dylan Ramirez  -----  " << "Diego Carrero  -----  " << "Kevin Guerrero " << endl;

        cout << "Ingrese una opcion: ";
}

// Metodo main en donde se realizan las pruebas y las acciones de
// las clases y las estructuras en el programa
int main() {
    // Se crea un acronimo para la clase banco
    SistemaBancario banco;

    //Se recibe un numero como opcion para acceder a las diferentes acciones del menu
    int opcion;
    // El menu se ejecuta hasta que elijan la opcion de salir
    do {
        mostrarMenu();
        cin >> opcion;
        cin.ignore(); // Ignorar el salto de línea después de la opción
        system("cls");

        switch (opcion) {
            case 1: {
                // El usuario ingresa todos los datos que se necesitan para crear una cuenta
                // Variables finales luego de la conversion de tipos de datos
                long long cedula;
                long long numero;
                string nombre;
                string tipo;
                //El saldo inicia en 0 cuando se crea una cuenta
                double saldo = 0;

                // Variables que se reciben directamente del input por teclado del usuario
                string strCedula;
                string strNumero;
                // Variables que controlan el ciclo repetitivo del input del teclado
                // Se usan para que se repita la accion de pedir un numero o una cedula
                // Si el valor que ingresaron anteriormente contiene alguna letra
                bool esCedula = true;
                bool esTelefono = true;

            do{
                esCedula = true;
                cout << "Ingrese la cedula del cliente: ";
                cin >> strCedula;
                cin.ignore(); // Ignorar el salto de línea después de la cédula

                    // Este for se ejecuta el numero de veces cuantos caracteres tenga el input
                    for (char c : strCedula) {
                            // La funcion isdigit() devuelve true si el caracter es un numero
                            // o false si es una letra
                        if (!isdigit(c)) {
                            // Si hay una letra en la cadena de caracteres se cambia la variable booleana que
                            // Regula el ciclo repetitivo para poder volver a intentar escribir un numero
                            esCedula = false;
                            break;
                        }
                    }

                // Si la cadena de caracteres no contiene ninguna letra y son solo numeros
                // Convierte la cadena string en una variable de tipo long long
                if (esCedula) {
                    // La funcion stoll() es la que se encarga de convertir la variable a long long
                    cedula = stoll(strCedula);
                } else {
                    cout << "Numero de cedula invalido. Intente nuevamente." << endl;
                }
            } while(!esCedula);

            // Este ciclo repetitivo funciona tal cual los demas que transforman
            // una cadena de caracteres en un numero long long
            // Para validar si el numero es valido o no
            do{
                esTelefono = true;
                cout << "Ingrese el numero de telefono del cliente: ";
                cin >> strNumero;
                cin.ignore(); // Ignorar el salto de línea después de la cédula

                    for (char c : strNumero) {
                        if (!isdigit(c)) {
                            esTelefono = false;
                            break;
                        }
                    }

                if (esTelefono) {
                    numero = stoll(strNumero);
                } else {
                    cout << "Numero de telefono invalido. Intente nuevamente." << endl;
                }
            } while(!esTelefono);



                cout << "Ingrese el nombre del cliente: ";
                getline(cin, nombre); // El metodo getline() sirve para extraer la cadena de caracteres

                cout << "Ingrese el tipo de cuenta (Ahorros o Corriente): ";
                getline(cin, tipo); // El metodo getline() sirve para extraer la cadena de caracteres

                // Si todos los datos digitados anteriormente son correctos la cuenta se inserta
                // En forma de nodo en el arbol AVL y se organiza automaticamente segun el numero de telefono
                // Del propietario
                banco.insertarcuenta(cedula, nombre, tipo,  saldo, numero, banco.guardarFecha());
                break;

        }
            case 2:
                // Llama al metodo que imprime las cuentas en pantalla
                banco.mostrarCuentas();
                break;
            case 3: {
                // Pide los datos de numero de cuenta y monto a depositar
                // Si se encuentra la cuenta se deposita el valor asignado
                long long numero;
                double monto;
                string strNumero;
                string strMonto;
                bool esTelefono = true;
                bool esMonto = true;

            // Este ciclo repetitivo funciona tal cual los demas que transforman
            // una cadena de caracteres en un numero long long
            // Para validar si el numero es valido o no
                do{
                esTelefono = true;
                cout << "Ingrese el numero de telefono del cliente: ";
                cin >> strNumero;
                cin.ignore(); // Ignorar el salto de línea después de la cédula

                    for (char c : strNumero) {
                        if (!isdigit(c)) {
                            esTelefono = false;
                            break;
                        }
                    }

                if (esTelefono) {
                    numero = stoll(strNumero);
                } else {
                    cout << "Numero de telefono invalido. Intente nuevamente." << endl;
                }
            } while(!esTelefono);

            // Este ciclo repetitivo funciona tal cual los demas que transforman
            // una cadena de caracteres en un numero long long
            // Para validar si el numero es valido o no
            do{
                esMonto = true;
                cout << "Ingrese el monto a depositar: ";
                cin >> strMonto;
                cin.ignore(); // Ignorar el salto de línea después de la cédula

                    for (char c : strMonto) {
                        if (!isdigit(c)) {
                            esMonto = false;
                            break;
                        }
                    }

                if (esMonto) {
                    monto = stoll(strMonto);
                } else {
                    cout << "Valor invalido. Intente nuevamente." << endl;
                }
            } while(!esMonto);
                // Llama al metodo que simula la accion de depositar
                banco.depositar(numero, monto);
                break;
            }
            case 4: {
                // Pide los datos de numero de cuenta y monto a retirar
                // Si se encuentra la cuenta se retira el valor asignado
                // Si el valor a retirar es mayor que el saldo de la cuenta no se hace el retiro
                                long long numero;
                double monto;
                string strNumero;
                string strMonto;
                bool esMonto = true;
                bool esTelefono = true;

            // Este ciclo repetitivo funciona tal cual los demas que transforman
            // una cadena de caracteres en un numero long long
            // Para validar si el numero es valido o no
                do{
                esTelefono = true;
                cout << "Ingrese el numero de telefono del cliente: ";
                cin >> strNumero;
                cin.ignore(); // Ignorar el salto de línea después de la cédula

                    for (char c : strNumero) {
                        if (!isdigit(c)) {
                            esTelefono = false;
                            break;
                        }
                    }

                if (esTelefono) {
                    numero = stoll(strNumero);
                } else {
                    cout << "Numero de telefono invalido. Intente nuevamente." << endl;
                }
            } while(!esTelefono);

            // Este ciclo repetitivo funciona tal cual los demas que transforman
            // una cadena de caracteres en un numero long long
            // Para validar si el numero es valido o no
            do{
                esMonto = true;
                cout << "Ingrese el monto a depositar: ";
                cin >> strMonto;
                cin.ignore(); // Ignorar el salto de línea después de la cédula

                    for (char c : strMonto) {
                        if (!isdigit(c)) {
                            esMonto = false;
                            break;
                        }
                    }

                if (esMonto) {
                    monto = stoll(strMonto);
                } else {
                    cout << "Valor invalido. Intente nuevamente." << endl;
                }
            } while(!esMonto);

                banco.retirar(numero, monto);
                break;
            }
            case 5:
                // Cuando elijan esta opcion salen del programa
                break;
            default:
                // Si ingresan una opcion que no se encuentra en el menu se muestra un mensaje de error
                // Y vuelve a pedir un numero como opcion del menu
                cout << "Opcion invalida. Por favor, intente nuevamente." << endl;
                break;
        }
        cout << endl;
    } while (opcion != 5);

    return 0;
}
