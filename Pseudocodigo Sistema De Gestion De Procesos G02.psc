Algoritmo SimuladorDeProcesosYMemoria
	Definir opcionPrincipal, opcionProceso, opcionMemoria Como Entero
	Definir pid, prioridad, tamanio Como Entero
	Definir nombre Como Cadena
	Repetir
		Limpiar Pantalla
		Escribir '=== MENU PRINCIPAL ==='
		Escribir '1. Gestor de Procesos'
		Escribir '2. Gestor de Memoria'
		Escribir '3. Salir'
		Escribir 'Seleccione una opcion: '
		Leer opcionPrincipal
		Según opcionPrincipal Hacer
			1:
				Repetir // GESTOR DE PROCESOS
					Limpiar Pantalla
					Escribir '--- GESTOR DE PROCESOS ---'
					Escribir '1. Insertar nuevo proceso'
					Escribir '2. Eliminar proceso por PID'
					Escribir '3. Buscar proceso por ID'
					Escribir '4. Buscar proceso por nombre'
					Escribir '5. Modificar prioridad'
					Escribir '6. Mostrar todos los procesos'
					Escribir '7. Volver al menu principal'
					Escribir 'Seleccione una opcion: '
					Leer opcionProceso
					Según opcionProceso Hacer
						1:
							Escribir '== Insertar nuevo proceso =='
							Escribir 'Ingrese PID: '
							Leer pid
							Escribir 'Ingrese nombre del proceso: '
							Leer nombre
							Escribir 'Ingrese prioridad: '
							Leer prioridad
							Escribir 'Simulacion: Se crearia un nodo con PID=', pid, ', nombre=', nombre, ', prioridad=', prioridad
							Escribir 'Este nodo se agregaría al final de la lista enlazada de procesos.'
						2:
							Escribir '== Eliminar proceso por PID =='
							Escribir 'Ingrese PID del proceso a eliminar: '
							Leer pid
							Escribir 'Simulacion: Se buscaría el nodo con PID=', pid, ' y se eliminaría de la lista si existe.'
						3:
							Escribir '== Buscar proceso por ID =='
							Escribir 'Ingrese PID a buscar: '
							Leer pid
							Escribir 'Simulacion: Se recorrería la lista buscando el PID ', pid
							Escribir 'Si se encuentra, se mostrarían sus datos.'
						4:
							Escribir '== Buscar proceso por nombre =='
							Escribir 'Ingrese nombre a buscar: '
							Leer nombre
							Escribir 'Simulacion: Se recorrería la lista buscando un proceso con nombre ', nombre
							Escribir 'Si se encuentra, se mostrarían sus datos.'
						5:
							Escribir '== Modificar prioridad de proceso =='
							Escribir 'Ingrese PID del proceso: '
							Leer pid
							Escribir 'Ingrese nueva prioridad: '
							Leer prioridad
							Escribir 'Simulacion: Se buscaría el proceso con PID=', pid, ' y se actualizaría su prioridad a ', prioridad
						6:
							Escribir '== Mostrar todos los procesos =='
							Escribir 'Simulacion: Se recorrería la lista desde el inicio y se mostrarían PID, nombre y prioridad de cada proceso.'
						7:
							Escribir 'Volviendo al menu principal...'
						De Otro Modo:
							Escribir 'Opcion no valida.'
					FinSegún
					Si opcionProceso<>7 Entonces
						Escribir 'Presione ENTER para continuar...'
						Esperar Tecla
					FinSi
				Hasta Que opcionProceso=7
			2:
				Repetir // GESTOR DE MEMORIA
					Limpiar Pantalla
					Escribir '--- GESTOR DE MEMORIA ---'
					Escribir '1. Asignar memoria a un proceso'
					Escribir '2. Liberar memoria (pop)'
					Escribir '3. Ver estado actual de la memoria'
					Escribir '4. Volver al menu principal'
					Escribir 'Seleccione una opcion: '
					Leer opcionMemoria
					Según opcionMemoria Hacer
						1:
							Escribir '== Asignar memoria a proceso =='
							Escribir 'Ingrese PID del proceso: '
							Leer pid
							Escribir 'Ingrese tamaño de memoria: '
							Leer tamanio
							Escribir 'Simulacion: Se crearía un nuevo bloque de memoria de tamaño ', tamanio
							Escribir 'y se agregaría al tope de la pila de memoria.'
						2:
							Escribir '== Liberar memoria (POP) =='
							Escribir 'Simulacion: Se eliminaría el bloque de memoria que está en el tope de la pila'
							Escribir 'y se liberaría el espacio asignado al proceso correspondiente.'
						3:
							Escribir '== Estado actual de la memoria =='
							Escribir 'Simulacion: Se recorrería la pila de memoria desde el tope hasta la base'
							Escribir 'Mostrando PID y tamaño de cada bloque asignado.'
						4:
							Escribir 'Volviendo al menu principal...'
						De Otro Modo:
							Escribir 'Opcion invalida.'
					FinSegún
					Si opcionMemoria<>4 Entonces
						Escribir 'Presione ENTER para continuar...'
						Esperar Tecla
					FinSi
				Hasta Que opcionMemoria=4
			3:
				Escribir 'Saliendo del programa...'
			De Otro Modo:
				Escribir 'Opcion no valida. Intente de nuevo.'
		FinSegún
	Hasta Que opcionPrincipal=3
FinAlgoritmo
