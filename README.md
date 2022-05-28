
# 2Dwoods

Proyecto desarrollado con la temática de metroid creado en el motor de Godot para un proyecto 2d que inició como plataforma y se le agregaron ítems para recolectar y un marcador de gemas donde cada gema vale 15 puntos.

## Introducción

La motivación para este juego viene de los juegos de metroid y castlevania que conforman el género de metroidvania, el cual ha tenido un auge reciente con juegos como hollow knight, siguiendo el género la temática que sigue el juego es una de exploración y recolección.

## Desarrollo del proyecto

#### Diseño y descripción


| Tipo | Descripcion     |
| :-------- | :------- | 
| `Nombre` | `2Dwoods` | 
| `Tipo de Juego` | `Plataforma (2d), recolectar` | 
| `Plataforma` | `Escritorio` | 
| `No. Jugadores` | `1 jugador` | 
| `Modos del juego` | `Explorar` | 
| `Target` | `9+ ` | 
| `Objetivo` | `Explorar las áreas  y recolectar gemas` | 
| `Contexto` | `Bosque, castillo, mina` | 



### Assets principales

#### Música

- Big Tree

#### Tileset

- Oak woods
- Kauss cave tiles
- 16 x 16 Dungeon tiles

#### Personajes

- Warrior
- Coin gems

### Niveles

- Bosque principal
- Mina
- Castillo

## Video

https://user-images.githubusercontent.com/58129483/170844742-b3f79026-dfc9-4262-8195-5672ae4b546b.mp4
[Demo](https://youtu.be/_V7Q2Pp2TO4)


## Jugabilidad

Los controles son los siguientes.

```bash
Shift: Correr
W, ↑, barra espaciadora: Saltar
A, D, ←, →: Moverse
```

Las mecánicas.

```bash
Deslizamiento de paredes.
Salto de paredes.
```

El objetivo es recolectar gemas actualmente
Marcador (HUD) muestra las gemas recolectadas por el jugador

## Resultados

Se completaron todos los requerimientos incluyendo el marcador, hubo problemas con los tamaños de los sprites que necesitan ser modificados, el juego se limita ya que carece de menús, enemigos,  mejoras de personaje, las partes que convierten un platformer a un metroidvania.


## Conclusiones

Fue una experiencia positiva y ardua, entre más información encontraba más deseaba haberlo visto antes de iniciar la implementación, para los map tiles aprender y usar mejor la opción de auto tile para acelerar el proceso de crear mapas, el usar singletons para mover escenas, utilizar un canvas para realizar fade ins & outs de las escenas, modificar sprites para que estos tengan los mismos parámetros, etc. Un proyecto que me gustaría retomar algún día.


