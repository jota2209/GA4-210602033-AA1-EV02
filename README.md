# GA4-210602033-AA1-EV02. Instalación de motor de base de datos Oracle
## Afiliación
- **Institución:** SENA, Centro de Electricidad, Electrónica y Telecomunicaciones - Regional Distrito Capital
- **Presentado por:** José Roberto Pérez Cano et al. , 2026
- **Programa de formación:** Tecnólogo en Gestión e Implementación de Bases de Datos
- **Ficha:** 3466363

## Instrucciones de Uso
### Documentación (Informe)
Ver `README.md` del siguiente repositorio: [Ir a repositorio externo](https://github.com/jota2209/GA2-220501106-AA2-EV03/blob/main/README.md)
### Motor de Base de Datos
#### Instalación en Windows
Paso 1. Descomprimir **.zip** descargado
![Paso 1](/images/w10pro03.png)
Paso 2. Ejecutar **setup.exe** y dar clic en "Siguiente"
![Paso 2](/images/w10pro04.png)
![Paso 2](/images/w10pro05.png)
Paso 3. Aceptar términos de acuerdo de licencia
![Paso 3](/images/w10pro06.png)
Paso 4. Seleccionar Ruta de Destino
En este paso si el asistente de instalación detecta un nombre no permitido en el botón de **Cambiar...** se pueden borrar los caracteres no permitidos como por ejemplo los espacios
![Paso 4](/images/w10pro07.png)
![Paso 4](/images/w10pro08.png)
Paso 5. Establecer contraseña
![Paso 5](/images/w10pro09.png)
Paso 6. Instalar
Antes de iniciar la instalación, el asistente de Oracle Database 21c Express Edition presenta un resumen de los parámetros definidos. Se verifica que la carpeta de destino corresponde a C:\app\OracleXE\, mientras que el directorio raíz de Oracle se establece en C:\app\OracleXE\dbhomeXE\. Las rutas fueron validadas previamente para evitar caracteres no permitidos y garantizar una configuración adecuada del motor de base de datos. Una vez comprobados estos parámetros, el asistente queda listo para iniciar la instalación.
![Paso 6](/images/w10pro10.png)
Paso 7. Permitir acceso
Permitir acceso a las rede privadas
![Paso 7](/images/w10pro11.png)
Paso 8. Esperar la instación hasta obtener mensaje que nos indica que la instalación ha sido un éxito.
![Paso 8](/images/w10pro12.png)
![Paso 8](/images/w10pro13.png)
Paso 9 Prueba de conexión con el cliente SQLDeveloper
Dar clic en probar, si la conexión es exitosa en el formulario de conexión debe aparecer **Estado: Correcto**
![Paso 9](/images/w10pro14.png)
#### Docker
Se debe clonar el repositorio, cambiar el nombre de `.env.example` a `.env`, asignar a `ORACLE_PASSWORD` un valor personalizado y seguro y estando en la raíz del repositorio ejecutar para levantar el servicio:
```bash
docker compose up -d
```
para detener el servicio sin eliminación de datos
```bash
docker compose down
```
para detener el servicio con eliminación de datos
```bash
docker compose down -v
```
