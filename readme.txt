GUÍA DE EJECUCIÓN - PROYECTO API AUTOMATION (KARATE)

DESCRIPCIÓN
Este proyecto contiene la automatización de servicios REST utilizando el framework Karate para la API pública ReqRes (https://reqres.in).

PRERREQUISITOS
Para ejecutar las pruebas correctamente, asegúrese de contar con lo siguiente:
   * Java JDK: Versión 11 o superior instalada.
   * Maven: Versión 3.6 o superior configurada en el sistema.
   * Editor: Se recomienda Visual Studio Code con el plugin 'Karate Runner' o IntelliJ IDEA.

CONFIGURACIÓN DE SEGURIDAD
   * El proyecto requiere una API Key para validar las peticiones.
   * Asegúrese de configurar su llave de acceso en el archivo de configuración correspondiente (ej. karate-config.js) o como variable de entorno antes de iniciar la ejecución.

INSTRUCCIONES DE EJECUCIÓN
1. Abra una terminal en la raíz del proyecto.
2. Ejecute el siguiente comando de Maven para limpiar y correr los tests:
   mvn clean test

REPORTES
Una vez finalizada la ejecución, Karate genera un reporte interactivo en formato HTML. Puede encontrarlo en la siguiente ruta:
   target/karate-reports/karate-summary.html

NOTAS TÉCNICAS
   * El proyecto utiliza sintaxis Gherkin para facilitar la lectura de los escenarios.
   * Se contempla la validación de payloads específicos para los flujos de Login (Exitoso y Fallido).