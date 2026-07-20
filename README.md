# 🎮 Pokémania 

¡Bienvenido a **Pokémania**! Una aplicación móvil desarrollada en Flutter que rinde homenaje a los clásicos videojuegos de Pokémon para consolas portátiles. La aplicación se conecta directamente con la **PokéAPI** para obtener datos en tiempo real y ofrece una experiencia de usuario fluida, nostálgica y visualmente atractiva.

---

## 🚀 Enlaces de Interés

* 📦 **Descargar la APK (Instalador para Android):** [¡Descarga el APK aquí!](https://github.com/TU_USUARIO/TU_REPOSITORIO/releases/download/v1.0.0/app-release.apk) *(Reemplaza con tu enlace de release)*
* 💻 **Repositorio del Proyecto:** [https://github.com/TU_USUARIO/TU_REPOSITORIO](https://github.com/TU_USUARIO/TU_REPOSITORIO)

---

## 🌟 Características Principales

* **Intro Cinemática Retro (`StoryScreen`):** Una secuencia de bienvenida clásica con el mismísimo Profesor Oak. Cuenta con un efecto elástico de entrada y fundidos simulando el encendido de una consola.
* **Botón de Salto Inteligente (Skip):** Diseñado con un look arcade, permite a los usuarios recurrentes saltarse la historia directamente al menú principal.
* **Transición Fluida de Escenas:** Navegación optimizada mediante un `PageRouteBuilder` personalizado que ejecuta un fundido cinemático a blanco de salida (`FadeTransition`), eliminando saltos abruptos entre pantallas.
* **Consola de Búsqueda Avanzada:** Un buscador estilizado tipo Pokédex donde puedes ingresar el ID de cualquier Pokémon y consultar su registro detallado de inmediato.
* **Coliseo Kanto (Lista Horizontal):** Una pasarela interactiva de tarjetas Pokémon que muestra con orgullo el número de registro clásico formateado a tres dígitos (ej. `#001`, `#025`) y el nombre en la parte superior antes de su sprite animado.
* **Diseño Anti-Overflow:** Interfaz totalmente responsiva gracias al uso de scrolls controlados que evitan errores visuales o bloqueos cuando el teclado del celular se despliega.

---

## 📱 ¿Cómo usar la aplicación?

1. **La Bienvenida:** Al abrir la aplicación, comenzará la introducción del Profesor Oak. Puedes ir tocando la pantalla para avanzar en el diálogo o presionar el botón **`SKIP >`** en la esquina superior derecha si quieres ir directo a la acción.
2. **Explorar el Coliseo:** En la pantalla principal de la Pokédex, desliza tu dedo horizontalmente sobre la sección *"Coliseo Kanto"* para ver las tarjetas de los Pokémon disponibles con sus respectivos IDs y nombres ordenados.
3. **Buscar por ID:** 
   * Toca la barra blanca que dice *"INGRESA EL ID DEL POKÉMON..."*.
   * Escribe el número del Pokémon que deseas buscar (ej: `6` para Charizard o `25` para Pikachu).
   * Presiona el botón negro **`BUSCAR EN POKÉDEX`** para abrir su pantalla de registro individual.

---

## 🛠️ Tecnologías y Herramientas Utilizadas

* **Framework:** [Flutter](https://flutter.dev/) (Dart)
* **Gestión de Estado:** [Provider](https://pub.dev/packages/provider) (para un consumo eficiente de datos de la API sin sobrecargar la memoria del dispositivo).
* **Consumo de Datos:** [PokéAPI](https://pokeapi.co/)
* **Componentes visuales:** Animaciones nativas (`AnimatedOpacity`), `Stack`, `SingleChildScrollView` y transiciones personalizadas de ruta.

---

## 📦 Instalación en Modo Desarrollo

Si eres desarrollador y deseas compilar o modificar el código fuente, sigue estos pasos:

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/TU_USUARIO/TU_REPOSITORIO.git](https://github.com/TU_USUARIO/TU_REPOSITORIO.git)