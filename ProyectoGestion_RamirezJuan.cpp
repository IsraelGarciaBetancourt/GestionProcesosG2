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
