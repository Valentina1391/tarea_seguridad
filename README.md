# Proyecto Spring Boot + Spring Security + JSP + MySQL

## Requisitos
- Java 17 o superior
- Maven
- MySQL encendido (puerto 3306)

## Configuración de la base de datos
1. Abrir `src/main/resources/application.properties`.
2. Cambiar `TU_PASSWORD` por la contraseña de MySQL (y `root` por el usuario, si es otro).
3. No hace falta crear la base de datos ni las tablas: se crean solas
   al iniciar la aplicación (base `seguridad_db`, tablas `usuarios`, `roles`, `usuarios_roles`).
   Los roles y usuarios de prueba también se insertan automáticamente
   con la contraseña encriptada con BCrypt.

## Ejecutar
```
mvn spring-boot:run
```
Abrir http://localhost:8080

## Usuarios de prueba
| Usuario | Clave | Roles |
|---|---|---|
| admin | admin123 | ADMIN, CREATOR |
| docente | docente123 | DOCENTE |
| creador | creador123 | CREATOR |
| maria | maria123 | DOCENTE, CREATOR |

## Rutas
- `/admin/inicio`: ADMIN
- `/docente/inicio`: DOCENTE
- `/new`: ADMIN y CREATOR
- `/promedio`: ADMIN y DOCENTE (ejercicio propio)
- Cualquier acceso sin permiso muestra la página 403 personalizada.