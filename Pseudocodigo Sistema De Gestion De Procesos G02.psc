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
		Seg�n opcionPrincipal Hacer
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
					Seg�n opcionProceso Hacer
						1:
							Escribir '== Insertar nuevo proceso =='
							Escribir 'Ingrese PID: '
							Leer pid
							Escribir 'Ingrese nombre del proceso: '
							Leer nombre
							Escribir 'Ingrese prioridad: '
							Leer prioridad
							Escribir 'Simulacion: Se crearia un nodo con PID=', pid, ', nombre=', nombre, ', prioridad=', prioridad
							Escribir 'Este nodo se agregar�a al final de la lista enlazada de procesos.'
						2:
							Escribir '== Eliminar proceso por PID =='
							Escribir 'Ingrese PID del proceso a eliminar: '
							Leer pid
							Escribir 'Simulacion: Se buscar�a el nodo con PID=', pid, ' y se eliminar�a de la lista si existe.'
						3:
							Escribir '== Buscar proceso por ID =='
							Escribir 'Ingrese PID a buscar: '
							Leer pid
							Escribir 'Simulacion: Se recorrer�a la lista buscando el PID ', pid
							Escribir 'Si se encuentra, se mostrar�an sus datos.'
						4:
							Escribir '== Buscar proceso por nombre =='
							Escribir 'Ingrese nombre a buscar: '
							Leer nombre
							Escribir 'Simulacion: Se recorrer�a la lista buscando un proceso con nombre ', nombre
							Escribir 'Si se encuentra, se mostrar�an sus datos.'
						5:
							Escribir '== Modificar prioridad de proceso =='
							Escribir 'Ingrese PID del proceso: '
							Leer pid
							Escribir 'Ingrese nueva prioridad: '
							Leer prioridad
							Escribir 'Simulacion: Se buscar�a el proceso con PID=', pid, ' y se actualizar�a su prioridad a ', prioridad
						6:
							Escribir '== Mostrar todos los procesos =='
							Escribir 'Simulacion: Se recorrer�a la lista desde el inicio y se mostrar�an PID, nombre y prioridad de cada proceso.'
						7:
							Escribir 'Volviendo al menu principal...'
						De Otro Modo:
							Escribir 'Opcion no valida.'
					FinSeg�n
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
					Seg�n opcionMemoria Hacer
						1:
							Escribir '== Asignar memoria a proceso =='
							Escribir 'Ingrese PID del proceso: '
							Leer pid
							Escribir 'Ingrese tama�o de memoria: '
							Leer tamanio
							Escribir 'Simulacion: Se crear�a un nuevo bloque de memoria de tama�o ', tamanio
							Escribir 'y se agregar�a al tope de la pila de memoria.'
						2:
							Escribir '== Liberar memoria (POP) =='
							Escribir 'Simulacion: Se eliminar�a el bloque de memoria que est� en el tope de la pila'
							Escribir 'y se liberar�a el espacio asignado al proceso correspondiente.'
						3:
							Escribir '== Estado actual de la memoria =='
							Escribir 'Simulacion: Se recorrer�a la pila de memoria desde el tope hasta la base'
							Escribir 'Mostrando PID y tama�o de cada bloque asignado.'
						4:
							Escribir 'Volviendo al menu principal...'
						De Otro Modo:
							Escribir 'Opcion invalida.'
					FinSeg�n
					Si opcionMemoria<>4 Entonces
						Escribir 'Presione ENTER para continuar...'
						Esperar Tecla
					FinSi
				Hasta Que opcionMemoria=4
			3:
				Escribir 'Saliendo del programa...'
			De Otro Modo:
				Escribir 'Opcion no valida. Intente de nuevo.'
		FinSeg�n
	Hasta Que opcionPrincipal=3
FinAlgoritmo
