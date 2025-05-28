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


// Elimina un proceso pidiendo PID directamente
void eliminarProceso() {
    int pid;
    cout << "Ingrese PID a eliminar: ";
    cin >> pid;

    if (cabezaProcesos == NULL) {
        cout << "No hay procesos para eliminar.\n";
        return;
    }
    if (cabezaProcesos->pid == pid) {
        Proceso* temp = cabezaProcesos;
        cabezaProcesos = cabezaProcesos->siguiente;
        delete temp;
        cout << "Proceso eliminado.\n";
        return;
    }
    Proceso* actual = cabezaProcesos;
    while (actual->siguiente != NULL && actual->siguiente->pid != pid) {
        actual = actual->siguiente;
    }
    if (actual->siguiente != NULL) {
        Proceso* temp = actual->siguiente;
        actual->siguiente = temp->siguiente;
        delete temp;
        cout << "Proceso eliminado.\n";
    } else {
        cout << "Proceso no encontrado.\n";
    }
}

// Busca proceso por ID, pide ID al usuario
void buscarPorID() {
    int pid;
    cout << "Ingrese PID a buscar: ";
    cin >> pid;

    Proceso* actual = cabezaProcesos;
    while (actual != NULL && actual->pid != pid) actual = actual->siguiente;

    if (actual != NULL)
        cout << "Encontrado: PID=" << actual->pid << ", Nombre: " << actual->nombre << ", Prioridad: " << actual->prioridad << endl;
    else
        cout << "Proceso no encontrado.\n";
}
