Terminado, empezando otro proyecto de juego :)


## Link a Itch.io para ejecutar: 
https://davidjesu.itch.io/asteroid-shooter
Clave: LICC


Es mi primer acercamiento a la creación de videojuegos, aprendiendo de un curso!

# 🎮 Nombre del Juego

--- Asteroid Shooter

## 🚀 Demo / Cómo jugar

**Controles:**

- Para moverte utiliza (W A S D) o las flechas del teclado (arriba, abajo, derecha, izquierda)
- Para disparar (Espacio)

**Objetivo:**

- Conseguir el mayor puntaje posible sin morir.
--- 

## 🛠️ Tecnologías usadas

- Godot 4.6.1
- GDScript
- Assets: Arte (Uranía , mi pareja), Música (DJARTMUSIC): https://pixabay.com/es/music/video-juegos-the-return-of-the-8-bit-era-301292/

---

## 🧠 Qué aprendí

- Creación de escenas, nodos e instanciar.
- Manejar cada escena separada y ordenada, para luego utilizarlas en una escena main.
- Programación ordenada, cada scripts hace modificaciones solo al respectivo nodo.
- Exportar variables en el inspector con @export.
- Referenciar Nodos hijos en el script @onready var sprite = $Sprite2D
- Movimiento de jugador y asignación de teclas (inputs) 
- Programación básica en GDScript (estructuras de datos, condicionales, bucles, etc)
- Usar CharacterBody2D para el jugador (El movimiento se basa en script), usar Area2D (Cuando quiera crear objetos que detecten otros objetos), usar Sprite2D para agregarles un Sprite al objeto y RigidBody como cuerpos con físicas de godot.
- Introducción a Timer y señales.
- Agregar música a un juego mediante AudioStreamPlayer2D.
- Introducción al UID, cree un HUB que muestre el Score del jugador y un HUB GameOver al perder.
- AutoLoads (Variables y métodos globales) ideal para manejo del juego como el Score (Los AutoLoads son scripts que se inician automaticamente con el inicio del juego)
- Crear particula en Godot, modificarla, instanciarla y eliminarla con su respectiva señal.
- Exportación del proyecto y manejo de versiones con Github.
- Crear y terminar un juego funcional.
---

## ⚙️ Desafíos que enfrenté

1. Problemas al instanciar nodos hijos con add_child() haciendo que se destruyan ambos a la vez cuando realizaba queue_free()
2. Problemas con la resolucion en distintas pantallas

---

## 🧩 Cómo lo resolví

1. Instanciar con add_sibbling() cuando necesito que sean independientes.
2. Utilizar el escalado mediante canvas_item en la configuracion del proyecto, manteniendo la proporcion.

---

## 📈 Posibles Mejoras futuras

- Aumento gradual de la dificultad (Basado en el Score) o crear Waves en vez de juego infinito.
- Agregar eventos temporales al juego
- Minijefe o jefe o enemigo distinto a los Asteroides
- Actualización de los sprites en el Juego.
---



## 📌 Estado del proyecto

- 🟢 Terminado, con posibles actualizaciones en el futuro.
