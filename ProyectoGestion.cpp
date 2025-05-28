#include <iostream>
#include <string>

using namespace std;

struct Proceso {
    int pid;
    string nombre;
    int prioridad;
    Proceso* siguiente;
};

Proceso* cabezaProcesos = NULL;

struct BloqueMemoria {
    int pid;
    int tamanio;
    BloqueMemoria* siguiente;
};

BloqueMemoria* topeMemoria = NULL;

// --- Funciones Gestor de Procesos ---

// Inserta un nuevo proceso, pidiendo datos al usuario directamente
void insertarProceso() {
    int pid, prioridad;
    string nombre;

    cout << "Ingrese PID: ";
    cin >> pid;
    cin.ignore();
    cout << "Ingrese nombre: ";
    getline(cin, nombre);
    cout << "Ingrese prioridad: ";
    cin >> prioridad;

    // Lógica original para insertar proceso
    Proceso* nuevo = new Proceso;
    nuevo->pid = pid;
    nuevo->nombre = nombre;
    nuevo->prioridad = prioridad;
    nuevo->siguiente = NULL;

    if (cabezaProcesos == NULL) {
        cabezaProcesos = nuevo;
    } else {
        Proceso* actual = cabezaProcesos;
        while (actual->siguiente != NULL) {
            actual = actual->siguiente;
        }
        actual->siguiente = nuevo;
    }
    cout << "Proceso insertado correctamente.\n";
}
